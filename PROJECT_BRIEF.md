# PROJECT BRIEF

最后更新：2026-07-11

## 1. 项目名称

HIS 官网 / 网站商城优化项目

当前工作目录：

`g:\我的雲端硬碟\10_Projects\PRJ_HIS_网站商城优化\PRJ_HIS_hoff-industrial.com_网站项目_[进行中]`

## 2. 项目目标

本项目用于持续优化 Hoffmann Industrial Solution（HIS）官网的品牌展示、产品介绍、项目案例、公司里程碑与后续商城化能力。

核心目标：

1. 提升官网的高端工业品牌形象
2. 清晰展示产品线与解决方案能力
3. 为后续内容自动化、商城化、ROI / EOL 页面扩展做准备
4. 让项目在 Trae、Google Drive 与人工接力之间都能稳定延续上下文

## 3. 当前技术栈

- 前端：`HTML + Tailwind CSS + Vanilla JS`
- 站点形态：静态网站
- 数据方式：部分页面使用本地 `js/json` 数据文件
- 维护方式：手动改档 + 可逐步接入自动化流程

## 4. 主要页面

- `index.html`：首页
- `company-profile.html`：公司介绍 / Milestone
- `project.html`：项目案例页
- `product-workstation.html`：Workstation 产品页
- `product-smart-cabinet.html`：Smart Cabinet 产品页
- `product-agv.html`：AGV 产品页
- `contact.html`：联系页

## 5. 关键数据与素材位置

- `assets/data/company-timeline.js`：公司时间线主要数据
- `assets/data/company-timeline.json`：时间线 JSON 版本
- `assets/projects/`：项目案例图片
- `assets/customer-logos/`：客户与品牌 logo
- `assets/docs/`：公司资料与参考文档
- `使用手册.txt`：历史维护说明与自动化思路

## 6. 品牌与设计方向

- 风格：高端、克制、工业 B2B、信任导向
- 参考方向：简洁、偏 Steelcase 风格的企业展示感
- 页面表达重点：
  - 少而精的文案
  - 清晰的数据与能力点
  - 强调品牌背书、案例、部署能力、可靠性

## 7. 已知历史成果

- 已建立三大产品页：Workstation / Smart Cabinet / AGV
- `company-profile.html` 曾做过里程碑时间线重构
- 时间线卡片做过 hover 大图与说明展示
- 图片显示逻辑改过，避免裁切并保留原始比例
- 页面底部留白曾针对 hover 大图做过优化
- 项目已有自动化维护思路与 SOP 草稿

## 8. 未来扩展方向

- 商城化页面
- Datasheet 自动清洗与挂载
- ROI / EOL 内容页
- n8n 驱动的内容更新流程
- 与 Google Drive / MCP 协同的资料维护

## 9. 上下文恢复入口

若 Trae 再次丢失上下文，优先阅读：

1. `CONTEXT_RECOVERY_2026-07-11.md`
2. 本文件 `PROJECT_BRIEF.md`
3. `PROJECT_STATUS.md`
4. `DECISIONS.md`
5. `DEPLOYMENT_NOTES.md`
6. `MCP_REGISTRY.md`
