-- DRM系统管理菜单快速修复脚本
-- 连接信息: 192.168.1.128:3306/drm (root/afa123456)

USE drm;

-- 步骤1: 显示所有被隐藏的系统管理菜单
UPDATE sys_menu SET visible = '0' WHERE menu_id < 2000 AND visible = '1';
SELECT CONCAT('✓ 已显示 ', ROW_COUNT(), ' 个被隐藏的菜单') AS result;

-- 步骤2: 启用所有被停用的系统管理菜单
UPDATE sys_menu SET status = '0' WHERE menu_id < 2000 AND status = '1';
SELECT CONCAT('✓ 已启用 ', ROW_COUNT(), ' 个被停用的菜单') AS result;

-- 步骤3: 为admin角色分配所有系统管理菜单权限
INSERT IGNORE INTO sys_role_menu (role_id, menu_id)
SELECT r.role_id, m.menu_id
FROM sys_role r, sys_menu m
WHERE r.role_key = 'admin'
AND m.menu_id < 2000;
SELECT CONCAT('✓ 已添加 ', ROW_COUNT(), ' 条菜单权限') AS result;

-- 步骤4: 验证修复结果
SELECT '=== 修复后验证 ===' AS '';
SELECT
    menu_id,
    menu_name,
    CONCAT('可见:', visible, ', 状态:', status) AS status
FROM sys_menu
WHERE menu_id < 2000
ORDER BY parent_id, order_num
LIMIT 10;

SELECT CONCAT('✓ 修复完成！共影响 ', ROW_COUNT(), ' 条记录') AS final_result;
