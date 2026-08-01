# MCP REGISTRY

最后更新：2026-07-11

## 1. 用途

本文件用于记录本项目后续会接入哪些 MCP、它们负责什么、当前是否可用，以及遇到问题时该先检查什么。

## 2. 当前已知相关 MCP / 工具背景

### Google Workspace MCP

用途：

- 读取 Google Drive / Docs / Sheets
- 支持 `NOW_INDEX` 与项目文档接力

状态：

- 历史上已接通过，但曾因 Windows 代理环境导致超时

关键注意：

- 代理环境异常时，MCP 可能无法正常访问 Google API
- Windows 下需要特别注意系统级代理与 Clash Verge 服务模式

### n8n

用途：

- 未来可用于内容自动化、资料处理、页面更新流程编排

状态：

- 已在历史上下文中出现自动化方向，但本项目当前目录尚未直接绑定配置文件

### 其他潜在 MCP

未来可能与本项目有关：

- Git Bridge
- PostgreSQL Bridge
- MinIO Bridge
- Qdrant Bridge
- Web Search Bridge
- Notion Bridge

## 3. 记录模板

以后每新增一个 MCP，请按以下格式补充：

### MCP 名称

用途：

接入位置：

负责人：

凭据存放位置：

最后验证时间：

验证动作：

验证结果：

异常处理说明：

## 4. 当前项目建议优先级

### 第一优先

Google Workspace MCP

原因：

- 直接关系到你的文档接力与长期记忆体系

### 第二优先

n8n 相关接入

原因：

- 关系到网站内容自动化维护

### 第三优先

Git / 存储 / 检索类 MCP

原因：

- 属于后续规模化协作与部署能力增强

## 5. 快速排查顺序

如果 MCP 失效，优先按此顺序检查：

1. 当前项目路径是否又改名
2. Trae 是否重启过
3. MCP 配置是否仍在
4. Token / OAuth 是否失效
5. Windows 代理是否正常
6. Clash Verge 服务模式是否开启
7. 对应服务本身是否在线
