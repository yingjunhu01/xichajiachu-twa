@echo off
chcp 65001 >nul
echo ==========================================
echo  喜茶家厨 APK 构建工具
echo ==========================================
echo.
echo 请选择构建方式：
echo.
echo 1. 使用 GitHub Actions（推荐，免费）
echo    - 需要 GitHub 账号
echo    - 自动构建，无需本地环境
echo.
echo 2. 使用 Android Studio（需要安装软件）
echo    - 下载 Android Studio
echo    - 打开项目构建
echo.
echo 3. 使用在线工具（最简单）
echo    - 访问 https://www.pwabuilder.com
echo    - 输入网址即可生成
echo.
echo ==========================================
echo.

choice /c 123 /n /m "请选择 (1/2/3): "

if errorlevel 3 goto online
if errorlevel 2 goto androidstudio
if errorlevel 1 goto github

:github
echo.
echo 使用 GitHub Actions 构建步骤：
echo.
echo 1. 访问 https://github.com/new 创建新仓库
echo 2. 仓库名：xichajiachu-twa
echo 3. 上传此文件夹中的所有文件
echo 4. 进入 Actions 页面，等待构建完成
echo 5. 下载生成的 APK 文件
echo.
start https://github.com/new
goto end

:androidstudio
echo.
echo 使用 Android Studio 构建步骤：
echo.
echo 1. 下载 Android Studio：https://developer.android.com/studio
echo 2. 安装并打开 Android Studio
echo 3. 选择 "Open"，打开此文件夹
echo 4. 等待 Gradle 同步完成
echo 5. 点击菜单 Build -^> Build Bundle(s) / APK(s) -^> Build APK(s)
echo 6. 在 app/build/outputs/apk/debug/ 找到 APK 文件
echo.
start https://developer.android.com/studio
goto end

:online
echo.
echo 使用在线工具构建步骤：
echo.
echo 1. 访问 https://www.pwabuilder.com
echo 2. 输入网址：http://47.95.179.240
echo 3. 点击 "Next" 或 "Package"
echo 4. 选择 "Android"
echo 5. 填写信息：
echo    - Package ID: com.xichajiachu.app
echo    - Name: 喜茶家厨
echo    - Version: 1.0.0
echo 6. 点击 "Generate" 下载 APK
echo.
start https://www.pwabuilder.com
goto end

:end
echo.
pause
