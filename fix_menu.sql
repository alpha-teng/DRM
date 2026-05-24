-- =============================================
-- DRM系统管理菜单修复脚本
-- 执行此脚本前请先备份数据库！
-- =============================================

USE drm;

-- ========== 第一部分：诊断 ==========

-- 1. 查看所有系统管理菜单（ID < 2000）
SELECT '=== 1. 系统管理菜单列表 ===' AS '';
SELECT
    menu_id,
    menu_name,
    parent_id,
    order_num,
    visible,  -- '0'=显示 '1'=隐藏
    status,   -- '0'=正常 '1'=停用
    CASE WHEN visible = '1' THEN '❌隐藏' ELSE '✓显示' END AS visible_status,
    CASE WHEN status = '1' THEN '❌停用' ELSE '✓正常' END AS status_status
FROM sys_menu
WHERE menu_id < 2000
ORDER BY parent_id, order_num;

-- 2. 查看admin角色信息
SELECT '=== 2. Admin角色信息 ===' AS '';
SELECT role_id, role_name, role_key, status FROM sys_role WHERE role_key = 'admin';

-- 3. 查看admin角色拥有的系统管理菜单权限数量
SELECT '=== 3. Admin角色系统管理菜单权限统计 ===' AS '';
SELECT
    COUNT(*) AS menu_count,
    CASE
        WHEN COUNT(*) = 0 THEN '❌没有权限'
        WHEN COUNT(*) < 50 THEN '⚠权限可能不完整'
        ELSE '✓权限正常'
    END AS permission_status
FROM sys_role_menu rm
JOIN sys_menu m ON rm.menu_id = m.menu_id
WHERE rm.role_id = (SELECT role_id FROM sys_role WHERE role_key = 'admin')
AND m.menu_id < 2000;

-- 4. 查看缺失的菜单权限
SELECT '=== 4. Admin角色缺失的系统管理菜单权限 ===' AS '';
SELECT
    m.menu_id,
    m.menu_name,
    m.parent_id,
    '❌缺失权限' AS issue
FROM sys_menu m
WHERE m.menu_id < 2000
AND NOT EXISTS (
    SELECT 1 FROM sys_role_menu rm
    WHERE rm.role_id = (SELECT role_id FROM sys_role WHERE role_key = 'admin')
    AND rm.menu_id = m.menu_id
)
ORDER BY m.menu_id;

-- ========== 第二部分：修复 ==========

-- 开始事务
START TRANSACTION;

-- 修复1: 显示所有被隐藏的系统管理菜单
SELECT '=== 修复1: 显示被隐藏的菜单 ===' AS '';
UPDATE sys_menu SET visible = '0' WHERE menu_id < 2000 AND visible = '1';
SELECT ROW_COUNT() AS updated_rows, '个菜单已被显示';

-- 修复2: 启用所有被停用的系统管理菜单
SELECT '=== 修复2: 启用被停用的菜单 ===' AS '';
UPDATE sys_menu SET status = '0' WHERE menu_id < 2000 AND status = '1';
SELECT ROW_COUNT() AS updated_rows, '个菜单已被启用';

-- 修复3: 为admin角色分配所有系统管理菜单权限
SELECT '=== 修复3: 分配菜单权限 ===' AS '';
INSERT IGNORE INTO sys_role_menu (role_id, menu_id)
SELECT r.role_id, m.menu_id
FROM sys_role r, sys_menu m
WHERE r.role_key = 'admin'
AND m.menu_id < 2000;
SELECT ROW_COUNT() AS inserted_rows, '条权限记录已添加';

-- 修复4: 确保系统管理菜单的显示顺序正确（显示在最右边）
SELECT '=== 修复4: 调整菜单显示顺序 ===' AS '';
UPDATE sys_menu SET order_num = 4 WHERE menu_id = 1 AND order_num != 4;
SELECT ROW_COUNT() AS updated_rows, '个菜单顺序已调整';

-- 提交事务
COMMIT;

-- ========== 第三部分：验证 ==========

SELECT '=== 修复后验证 ===' AS '';

-- 验证1: 检查是否还有被隐藏或停用的菜单
SELECT
    menu_id,
    menu_name,
    visible,
    status
FROM sys_menu
WHERE menu_id < 2000
AND (visible = '1' OR status = '1');

-- 如果上面查询有结果，说明修复失败
-- 如果没有结果，说明所有菜单都已正常显示和启用

-- 验证2: 检查admin角色的菜单权限
SELECT
    COUNT(*) AS total_menu_permissions,
    '个系统管理菜单权限已分配给admin角色' AS status
FROM sys_role_menu rm
JOIN sys_menu m ON rm.menu_id = m.menu_id
WHERE rm.role_id = (SELECT role_id FROM sys_role WHERE role_key = 'admin')
AND m.menu_id < 2000;

-- ========== 完成 ==========
SELECT '=== 修复完成！请执行以下操作 ===' AS '';
SELECT '1. 清除Redis缓存（如果启用了Redis）' AS step1;
SELECT '2. 退出系统重新登录' AS step2;
SELECT '3. 如果仍然看不到菜单，请清除浏览器缓存（Ctrl+F5）' AS step3;
