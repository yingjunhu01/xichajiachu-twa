# GitHub Actions 构建 APK 操作指南

## 步骤一：创建 GitHub 仓库

1. 打开浏览器，访问 https://github.com/new
2. 填写仓库信息：
   - **Repository name**: `xichajiachu-twa`
   - **Description**: 喜茶家厨 Android APK 构建项目
   - 选择 **Public**（公开）
   - 勾选 **Add a README file**
3. 点击 **Create repository**

## 步骤二：上传项目文件

### 方法一：使用网页上传（最简单）

1. 在新创建的仓库页面，点击 **"uploading an existing file"** 链接
2. 将 `D:\xicha\projects\xichajiachu-twa` 文件夹中的所有文件和文件夹拖到上传区域
   - 包括：`.github` 文件夹、`app` 文件夹、`build.gradle` 等所有文件
3. 在页面底部填写提交信息：
   - **Commit message**: `Initial commit`
4. 点击 **Commit changes**

### 方法二：使用 Git 命令行

```bash
cd D:\xicha\projects\xichajiachu-twa
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/wjn1997/xichajiachu-twa.git
git push -u origin main
```

## 步骤三：触发自动构建

上传完成后，GitHub Actions 会自动开始构建：

1. 在仓库页面点击 **Actions** 标签
2. 你会看到工作流正在运行（显示黄色圆点）
3. 等待构建完成（大约 5-10 分钟）
   - 绿色勾表示成功
   - 红色叉表示失败

## 步骤四：下载 APK

构建成功后：

1. 点击 **Actions** 标签
2. 点击最新的成功构建记录
3. 在页面底部找到 **Artifacts** 部分
4. 点击 **xichajiachu-apk** 下载 ZIP 文件
5. 解压 ZIP 文件，里面就是 APK 安装包

## 常见问题

### Q: 构建失败了怎么办？
A: 点击失败的构建记录，查看日志找出错误原因。常见原因：
- 文件上传不完整
- 配置文件格式错误

### Q: 如何更新 APK？
A: 修改项目文件后重新上传，GitHub Actions 会自动重新构建。

### Q: APK 安装时提示"未知来源"？
A: 在 Android 设置中允许安装未知来源的应用。

## 文件清单

确保上传以下所有文件：

```
xichajiachu-twa/
├── .github/
│   └── workflows/
│       └── build-apk.yml
├── app/
│   ├── build.gradle
│   ├── proguard-rules.pro
│   └── src/
│       └── main/
│           ├── AndroidManifest.xml
│           └── res/
│               ├── values/
│               │   ├── strings.xml
│               │   ├── colors.xml
│               │   └── themes.xml
│               └── xml/
│                   └── file_paths.xml
├── build.gradle
├── settings.gradle
├── gradle.properties
├── gradlew.bat
├── Dockerfile
└── README.md
```
