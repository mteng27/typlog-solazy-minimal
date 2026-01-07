# Solazy - Typlog Theme (blog.solazy.me 风格)

一个为 Typlog 设计的极简博客主题，整体风格参考 `https://blog.solazy.me/`：单栏、黑白配色、轻量导航和以文字为主的排版。

## 特性

- **Solazy 风格布局**：顶部细线导航、单列内容区、日期 + 标题列表
- **专注文字阅读**：适中的行宽、行距，清晰的层级标题
- **自适应布局**：手机与桌面均表现良好
- **多列表模版支持**：首页、归档、标签、语言、作者列表

## 在 Typlog 中使用

1. **上传到 GitHub**
   - 将整个主题目录（包含 `theme.json`、`*.j2`、`css/app.css` 等）放到一个 **公开** GitHub 仓库，例如 `mteng27/typlog-solazy-minimal`。
2. **打版本号 Tag**
   - 版本号与 `theme.json` 对应（当前为 `1.0.6`）：
   ```bash
   git tag 1.0.6
   git push origin 1.0.6
   ```
3. **在 Typlog 后台启用**
   - 进入 Typlog 控制台 → **设置 → 主题与设计（Themes & Design）**
   - 点击 **Change / 更改主题**
   - 在输入框中填入你的 GitHub 仓库：例如 `mateng/solazy-theme`
   - 保存后等待构建完成，前台即会应用该主题

> 注意：自定义主题是 Typlog 的 Pro 功能，需要对应套餐。

## 本地预览与开发

推荐使用 Typlog 官方的 `serve-theme` 工具在本地调试：

1. 从 `typlog/serve-theme` 仓库的 Releases 页面下载二进制
2. 设置环境变量：
   ```bash
   export TOKEN=pt_xxxx  # Typlog API Token
   export SITE=123       # 你的网站 ID（也可用 915 作为 demo 站点）
   ```
3. 进入主题目录后运行：
   ```bash
   serve-theme
   ```
4. 浏览器访问 `http://localhost:7000/` 即可预览

## 主题结构

```
.
├── css/
│   └── app.css          # 主样式文件（Solazy 风格）
├── home.j2              # 首页：简介 + 最新文章列表
├── list.j2              # 归档 / 通用列表页
├── item.j2              # 文章详情页
├── lang.j2              # 语言筛选列表页
├── tag.j2               # 标签列表页
├── author.j2            # 作者列表页
├── theme.json           # 主题元信息配置
└── README.md            # 本说明
```

## 自定义项

- **颜色 / 字体 / 宽度**：均通过 `css/app.css` 顶部的 `:root` 变量控制，你可以按需微调：
  - `--color-bg` / `--color-text` / `--color-border` / `--color-link`
  - `--font-main` / `--font-mono`
  - `--max-width`

## 要求

- GitHub 仓库必须是 **Public**
- 仓库需要打上与 `theme.json` 一致的 Git Tag 才能被 Typlog 加载
- 使用自定义主题需要 Typlog Pro

## License

MIT License - 可自由使用和修改。

## Credits

视觉风格参考 `blog.solazy.me`，实现为 Typlog 可用的 Jinja2 模板主题。
