# Solazy Minimal for Typlog

一个参考 blog.solazy.me 的极简 Typlog 主题。

## 功能
- 极简导航与排版，740px 内容宽度，系统字体栈
- 自适应浅/深色模式；移动端友好
- 首页最新文章、列表页归档、文章页正文与元信息
- 支持可选模板：`lang.j2`（语言）、`tag.j2`（标签）、`author.j2`（作者）
- 导航支持 Typlog 搜索弹层钩子（`js-search`）与订阅（`js-subscribe`）

## 文件
- `home.j2`、`list.j2`、`item.j2`、`page.j2`、`lang.j2`、`tag.j2`、`author.j2`
- `minimal.css`
- `theme.json`

## 使用
### 本地预览
1. 安装 `serve-theme`，获取 `TOKEN`（scope=theme）
2. `export TOKEN=pt_... && export SITE=915`
3. `serve-theme` 后访问 `http://localhost:7000/`

### 在 Typlog 启用自有主题（Pro）
1. 仓库需 Public，并打与 `theme.json.version` 一致的 tag（建议不带 `v` 前缀，如 `1.0.1`）
2. 后台 Settings → Themes & Design → Change，输入 `user/repo@version`
   - 例：`mteng27/typlog-solazy-minimal@1.0.1`

## 版本
- 1.0.1：新增 `repo/templates` 字段，增加 `lang.j2/tag.j2/author.j2`

## 许可
MIT