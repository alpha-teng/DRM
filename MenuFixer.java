import java.sql.*;

public class MenuFixer {
    private static final String URL = "jdbc:mysql://192.168.1.128:3306/drm?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=false&serverTimezone=GMT%2B8";
    private static final String USER = "root";
    private static final String PASSWORD = "afa123456";

    private Connection conn;

    public void connect() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (ClassNotFoundException ex) {
                throw new SQLException("MySQL Driver not found", ex);
            }
        }
        conn = DriverManager.getConnection(URL, USER, PASSWORD);
    }

    public void diagnose() throws SQLException {
        System.out.println("========== 菜单诊断 ==========");

        // 1. 检查系统管理菜单
        System.out.println("\n1. 系统管理菜单状态:");
        PreparedStatement ps = conn.prepareStatement(
            "SELECT menu_id, menu_name, parent_id, visible, status, order_num FROM sys_menu WHERE menu_id < 2000 ORDER BY parent_id, order_num");
        ResultSet rs = ps.executeQuery();
        printResultSet(rs);

        // 2. 检查admin角色
        System.out.println("\n2. Admin角色信息:");
        ps = conn.prepareStatement("SELECT role_id, role_name, role_key, status FROM sys_role WHERE role_key = 'admin'");
        rs = ps.executeQuery();
        printResultSet(rs);

        // 3. 检查admin角色的菜单权限
        System.out.println("\n3. Admin角色的系统管理菜单权限:");
        ps = conn.prepareStatement(
            "SELECT rm.role_id, rm.menu_id, m.menu_name, m.visible, m.status " +
            "FROM sys_role_menu rm " +
            "JOIN sys_menu m ON rm.menu_id = m.menu_id " +
            "WHERE rm.role_id = (SELECT role_id FROM sys_role WHERE role_key = 'admin') " +
            "AND m.menu_id < 2000 " +
            "ORDER BY m.menu_id");
        rs = ps.executeQuery();
        int count = 0;
        while (rs.next()) count++;
        System.out.println("找到 " + count + " 条系统管理菜单权限记录");
        if (count == 0) {
            System.out.println("❌ 问题：Admin角色没有被分配系统管理菜单权限！");
        }

        // 4. 检查用户角色关联
        System.out.println("\n4. Admin用户的角色:");
        ps = conn.prepareStatement(
            "SELECT u.user_name, r.role_id, r.role_name, r.status " +
            "FROM sys_user_role ur " +
            "JOIN sys_user u ON ur.user_id = u.user_id " +
            "JOIN sys_role r ON ur.role_id = r.role_id " +
            "WHERE u.user_name = 'admin'");
        rs = ps.executeQuery();
        printResultSet(rs);
    }

    public void fix() throws SQLException {
        System.out.println("\n========== 开始修复 ==========");

        // 1. 显示所有系统管理菜单
        int updated = executeUpdate("UPDATE sys_menu SET visible = '0' WHERE menu_id < 2000 AND visible = '1'");
        if (updated > 0) System.out.println("✓ 显示了 " + updated + " 个被隐藏的菜单");

        // 2. 启用所有系统管理菜单
        updated = executeUpdate("UPDATE sys_menu SET status = '0' WHERE menu_id < 2000 AND status = '1'");
        if (updated > 0) System.out.println("✓ 启用了 " + updated + " 个被停用的菜单");

        // 3. 为admin角色分配系统管理菜单
        int roleId = getAdminRoleId();
        if (roleId > 0) {
            updated = executeUpdate(
                "INSERT IGNORE INTO sys_role_menu (role_id, menu_id) " +
                "SELECT " + roleId + ", menu_id FROM sys_menu WHERE menu_id < 2000");
            System.out.println("✓ 为admin角色分配了 " + updated + " 条菜单权限");
        }

        // 4. 设置系统管理菜单的显示顺序
        updated = executeUpdate("UPDATE sys_menu SET order_num = 4 WHERE menu_id = 1");
        if (updated > 0) System.out.println("✓ 设置了系统管理菜单的显示顺序");

        System.out.println("\n========== 修复完成 ==========");
        System.out.println("请清除Redis缓存并重新登录系统");
    }

    private int getAdminRoleId() throws SQLException {
        PreparedStatement ps = conn.prepareStatement("SELECT role_id FROM sys_role WHERE role_key = 'admin'");
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            return rs.getInt("role_id");
        }
        return -1;
    }

    private int executeUpdate(String sql) throws SQLException {
        Statement stmt = conn.createStatement();
        return stmt.executeUpdate(sql);
    }

    private void printResultSet(ResultSet rs) throws SQLException {
        ResultSetMetaData meta = rs.getMetaData();
        int colCount = meta.getColumnCount();

        // Print header
        for (int i = 1; i <= colCount; i++) {
            System.out.printf("%-20s", meta.getColumnName(i));
        }
        System.out.println();

        // Print rows
        while (rs.next()) {
            for (int i = 1; i <= colCount; i++) {
                System.out.printf("%-20s", rs.getString(i));
            }
            System.out.println();
        }
    }

    public void close() throws SQLException {
        if (conn != null) conn.close();
    }

    public static void main(String[] args) {
        MenuFixer fixer = new MenuFixer();
        try {
            fixer.connect();

            // 先诊断
            fixer.diagnose();

            // 询问是否修复
            System.out.println("\n是否执行修复? (系统将自动修复)");
            Thread.sleep(2000); // 给用户时间看到诊断结果

            fixer.fix();

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                fixer.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
