-- =============================================
-- 菜单不显示问题诊断SQL
-- =============================================

-- 1. 检查系统管理相关菜单是否存在及其状态
SELECT
    menu_id,
    menu_name,
    parent_id,
    order_num,
    visible,  -- '0'=显示 '1'=隐藏
    status,   -- '0'=正常 '1'=停用
    component
FROM sys_menu
WHERE menu_id < 2000
ORDER BY parent_id, order_num;

-- 2. 检查当前用户信息（替换admin为实际用户名）
SELECT
    user_id,
    user_name,
    nick_name,
    status
FROM sys_user
WHERE user_name = 'admin';

-- 3. 检查用户的角色
SELECT
    r.role_id,
    r.role_name,
    r.role_key,
    r.status
FROM sys_user_role ur
JOIN sys_role r ON ur.role_id = r.role_id
JOIN sys_user u ON ur.user_id = u.user_id
WHERE u.user_name = 'admin';

-- 4. 检查角色是否分配了系统管理菜单权限
SELECT
    r.role_name,
    m.menu_id,
    m.menu_name,
    m.visible,
    m.status
FROM sys_role_menu rm
JOIN sys_role r ON rm.role_id = r.role_id
JOIN sys_menu m ON rm.menu_id = m.menu_id
WHERE r.role_id IN (
    SELECT role_id FROM sys_user_role
    WHERE user_id = (SELECT user_id FROM sys_user WHERE user_name = 'admin')
)
AND m.menu_id < 2000
ORDER BY m.parent_id, m.order_num;

-- 5. 检查是否有菜单标记为隐藏但角色有权限
SELECT
    m.menu_id,
    m.menu_name,
    m.visible,
    m.status,
    '此菜单被设置为隐藏或停用' as issue
FROM sys_menu m
WHERE m.menu_id < 2000
AND (m.visible = '1' OR m.status = '1');

-- =============================================
-- 常见问题修复SQL
-- =============================================

-- 修复1: 如果菜单被隐藏，显示所有系统管理菜单
-- UPDATE sys_menu SET visible = '0' WHERE menu_id < 2000;

-- 修复2: 如果菜单被停用，启用所有系统管理菜单
-- UPDATE sys_menu SET status = '0' WHERE menu_id < 2000;

-- 修复3: 为admin角色分配系统管理菜单权限
-- 先找到admin角色ID
-- SELECT role_id FROM sys_role WHERE role_key = 'admin';

-- 然后执行（假设角色ID为1）
-- INSERT IGNORE INTO sys_role_menu (role_id, menu_id)
-- SELECT 1, menu_id FROM sys_menu WHERE menu_id < 2000;
