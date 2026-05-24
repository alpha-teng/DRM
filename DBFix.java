import java.io.*;
import java.net.URL;
import java.net.URLClassLoader;
import java.sql.*;
import java.util.*;

public class DBFix {
    private static final String URL = "jdbc:mysql://192.168.1.128:3306/drm?useUnicode=true&characterEncoding=utf8&useSSL=false&serverTimezone=Asia/Shanghai";
    private static final String USER = "root";
    private static final String PASSWORD = "afa123456";

    public static void main(String[] args) {
        try {
            // 尝试加载MySQL驱动
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e1) {
            try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (ClassNotFoundException e2) {
                System.out.println("错误: 找不到MySQL驱动程序");
                System.out.println("请确保mysql-connector-java.jar在classpath中");
                System.out.println("\n您可以手动执行以下SQL:");
                printManualSQL();
                return;
            }
        }

        Connection conn = null;
        try {
            System.out.println("正在连接数据库: 192.168.1.128:3306/drm...");
            conn = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("✓ 数据库连接成功\n");

            // 诊断
            diagnose(conn);

            // 修复
            System.out.println("\n========== 开始修复 ==========");
            int result1 = executeUpdate(conn, "UPDATE sys_menu SET visible = '0' WHERE menu_id < 2000 AND visible = '1'");
            if (result1 > 0) System.out.println("✓ 显示了 " + result1 + " 个被隐藏的菜单");

            int result2 = executeUpdate(conn, "UPDATE sys_menu SET status = '0' WHERE menu_id < 2000 AND status = '1'");
            if (result2 > 0) System.out.println("✓ 启用了 " + result2 + " 个被停用的菜单");

            int result3 = executeUpdate(conn,
                "INSERT IGNORE INTO sys_role_menu (role_id, menu_id) " +
                "SELECT r.role_id, m.menu_id FROM sys_role r, sys_menu m " +
                "WHERE r.role_key = 'admin' AND m.menu_id < 2000");
            System.out.println("✓ 为admin角色分配了 " + result3 + " 条菜单权限");

            System.out.println("\n========== 修复完成 ==========");
            System.out.println("请执行以下操作:");
            System.out.println("1. 清除Redis缓存（如果启用了）");
            System.out.println("2. 退出系统重新登录");
            System.out.println("3. 清除浏览器缓存（Ctrl+Shift+Delete）");

        } catch (SQLException e) {
            System.out.println("数据库错误: " + e.getMessage());
            System.out.println("\n请手动执行以下SQL:");
            printManualSQL();
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {}
            }
        }
    }

    private static void diagnose(Connection conn) throws SQLException {
        System.out.println("========== 诊断 ==========");

        Statement stmt = conn.createStatement();

        // 检查系统管理菜单
        System.out.println("\n1. 系统管理菜单状态:");
        ResultSet rs = stmt.executeQuery(
            "SELECT menu_id, menu_name, visible, status FROM sys_menu WHERE menu_id < 2000 ORDER BY menu_id LIMIT 10");
        printResultSet(rs);

        // 检查admin角色权限
        System.out.println("\n2. Admin角色菜单权限:");
        rs = stmt.executeQuery(
            "SELECT COUNT(*) as count FROM sys_role_menu rm " +
            "JOIN sys_menu m ON rm.menu_id = m.menu_id " +
            "WHERE rm.role_id = (SELECT role_id FROM sys_role WHERE role_key = 'admin') " +
            "AND m.menu_id < 2000");
        if (rs.next()) {
            int count = rs.getInt("count");
            System.out.println("Admin角色有 " + count + " 条系统管理菜单权限");
            if (count == 0) {
                System.out.println("❌ 问题: Admin角色没有系统管理菜单权限！");
            } else if (count < 20) {
                System.out.println("⚠ 警告: 菜单权限可能不完整");
            }
        }
    }

    private static int executeUpdate(Connection conn, String sql) throws SQLException {
        Statement stmt = conn.createStatement();
        return stmt.executeUpdate(sql);
    }

    private static void printResultSet(ResultSet rs) throws SQLException {
        ResultSetMetaData meta = rs.getMetaData();
        int colCount = meta.getColumnCount();

        for (int i = 1; i <= colCount; i++) {
            System.out.printf("%-15s", meta.getColumnName(i));
        }
        System.out.println();

        while (rs.next()) {
            for (int i = 1; i <= colCount; i++) {
                System.out.printf("%-15s", rs.getString(i));
            }
            System.out.println();
        }
    }

    private static void printManualSQL() {
        System.out.println("USE drm;");
        System.out.println("-- 显示被隐藏的菜单");
        System.out.println("UPDATE sys_menu SET visible = '0' WHERE menu_id < 2000;");
        System.out.println("-- 启用被停用的菜单");
        System.out.println("UPDATE sys_menu SET status = '0' WHERE menu_id < 2000;");
        System.out.println("-- 分配菜单权限");
        System.out.println("INSERT IGNORE INTO sys_role_menu (role_id, menu_id)");
        System.out.println("SELECT r.role_id, m.menu_id FROM sys_role r, sys_menu m");
        System.out.println("WHERE r.role_key = 'admin' AND m.menu_id < 2000;");
    }
}
