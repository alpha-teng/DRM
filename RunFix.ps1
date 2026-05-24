# PowerShell脚本 - 连接MySQL并执行修复
# 需要安装MySQL Connector/NET

param(
    [string]$Server = "192.168.1.128",
    [string]$Database = "drm",
    [string]$Username = "root",
    [string]$Password = "afa123456"
)

Write-Host "正在尝试连接到MySQL数据库..." -ForegroundColor Yellow

# 方法1: 尝试使用mysql命令（如果PATH中有）
$mysqlPaths = @(
    "C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe",
    "C:\Program Files\MySQL\MySQL Server 5.7\bin\mysql.exe",
    "C:\xampp\mysql\bin\mysql.exe",
    "C:\wamp64\bin\mysql\mysql*.*\bin\mysql.exe",
    "C:\laragon\bin\mysql\mysql*.*.*\bin\mysql.exe"
)

$mysqlExe = $null
foreach ($path in $mysqlPaths) {
    if (Test-Path $path) {
        $mysqlExe = $path
        break
    }
}

if ($mysqlExe) {
    Write-Host "找到MySQL客户端: $mysqlExe" -ForegroundColor Green

    # 执行诊断
    Write-Host "`n========== 开始诊断 ==========" -ForegroundColor Cyan
    $diagCmd = "`"USE $Database; SELECT menu_id, menu_name, visible, status FROM sys_menu WHERE menu_id < 2000 ORDER BY menu_id LIMIT 20;`""
    & $mysqlExe -h$Server -u$Username -p$Password -e $diagCmd

    # 执行修复
    Write-Host "`n========== 开始修复 ==========" -ForegroundColor Cyan
    Write-Host "修复步骤：" -ForegroundColor Yellow
    Write-Host "1. 显示所有被隐藏的系统管理菜单"
    Write-Host "2. 启用所有被停用的系统管理菜单"
    Write-Host "3. 为admin角色分配系统管理菜单权限"

    $fixCommands = @(
        "UPDATE sys_menu SET visible = '0' WHERE menu_id < 2000 AND visible = '1';",
        "UPDATE sys_menu SET status = '0' WHERE menu_id < 2000 AND status = '1';",
        "INSERT IGNORE INTO sys_role_menu (role_id, menu_id) SELECT r.role_id, m.menu_id FROM sys_role r CROSS JOIN sys_menu m WHERE r.role_key = 'admin' AND m.menu_id < 2000;"
    )

    foreach ($cmd in $fixCommands) {
        & $mysqlExe -h$Server -u$Username -p$Password $Database -e $cmd
    }

    Write-Host "`n========== 修复完成 ==========" -ForegroundColor Green
    Write-Host "请执行以下操作：" -ForegroundColor Yellow
    Write-Host "1. 清除Redis缓存"
    Write-Host "2. 退出系统重新登录"
    Write-Host "3. 清除浏览器缓存（Ctrl+Shift+Delete）"
} else {
    Write-Host "未找到MySQL客户端" -ForegroundColor Red
    Write-Host "`n请手动执行以下步骤：" -ForegroundColor Yellow
    Write-Host "1. 安装MySQL客户端或使用Navicat/DBeaver等工具"
    Write-Host "2. 连接到数据库: $Server : 3306 / $Database"
    Write-Host "3. 执行 fix_menu.sql 脚本"
    Write-Host "`n或执行以下SQL：" -ForegroundColor Cyan
    Write-Host "UPDATE sys_menu SET visible = '0' WHERE menu_id < 2000;"
    Write-Host "UPDATE sys_menu SET status = '0' WHERE menu_id < 2000;"
    Write-Host "INSERT IGNORE INTO sys_role_menu (role_id, menu_id) SELECT r.role_id, m.menu_id FROM sys_role r, sys_menu m WHERE r.role_key = 'admin' AND m.menu_id < 2000;"
}

Write-Host "`n按任意键退出..." -ForegroundColor Gray
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
