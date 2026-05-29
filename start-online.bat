@echo off
chcp 65001 >nul
title 五子棋在线对战

echo.
echo    ╔══════════════════════════════════════════╗
echo    ║         五子棋 - 在线联机启动器          ║
echo    ╚══════════════════════════════════════════╝
echo.
echo    注意：本机启动仅限局域网访问。
echo    如需公网对战，请使用以下方式之一：
echo.
echo    [推荐] GitHub Pages 免费部署：
echo      1. 将代码推送到 GitHub 仓库
echo      2. 在仓库 Settings ^> Pages 中启用
echo      3. 选择 main 分支作为源并保存
echo      4. 会得到 https://用户名.github.io/仓库名/gomoku.html
echo      5. 将链接分享给朋友即可
echo.
echo    [本地] 启动本地服务器：
echo.

start "" /B python -m http.server 8080
timeout /t 1 >nul
start "" http://localhost:8080/gomoku.html

echo    ✅ 已打开 http://localhost:8080/gomoku.html
echo.
echo    ⚠ 本地服务器仅局域网可访问。
echo    如需公网对战，请使用 GitHub Pages（见上方说明）。
echo.
pause
