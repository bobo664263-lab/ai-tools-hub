@echo off
chcp 65001 >nul
echo.
echo ╔══════════════════════════════════════╗
echo ║     🚀 AI利器 - 一键部署工具       ║
echo ╚══════════════════════════════════════╝
echo.

:: Check if remote already exists
git remote get-url origin >nul 2>&1
if %errorlevel% equ 0 (
    echo ✅ 已配置远程仓库，直接推送...
    git add -A
    git commit -m "update: %date% %time%" 2>nul
    git push -u origin master
    goto :done
)

:: Ask for GitHub username
set /p github_user="📝 你的 GitHub 用户名: "

:: Create repo URL
set repo_url=https://github.com/%github_user%/ai-tools-hub.git

echo.
echo 🔗 仓库地址: %repo_url%
echo 📌 请先到 https://github.com/new 创建一个名为 ai-tools-hub 的空仓库
echo    (不要勾选 README / .gitignore / License)
echo.
set /p confirm="✅ 创建好了？按回车继续..."

:: Add remote and push
git remote add origin %repo_url%
git add -A
git commit -m "v1.0: AI tools hub launch" 2>nul
echo.
echo 📤 正在推送到 GitHub...
git push -u origin master

:done
echo.
echo ╔══════════════════════════════════════╗
echo ║  🎉 推送成功！下一步：             ║
echo ║                                  ║
echo ║  1. 打开仓库 Settings → Pages    ║
echo ║  2. Source 选 "Deploy from branch"║
echo ║  3. Branch 选 "master" → Save   ║
echo ║  4. 等待1分钟 → 拿到网址！       ║
echo ║                                  ║
echo ║  🌐 网址: %github_user%.github.io║
echo ║                /ai-tools-hub      ║
echo ╚══════════════════════════════════╝
echo.
pause
