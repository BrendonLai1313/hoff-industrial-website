# 页面与文件关系总表

最后更新：2026-07-11

## 1. 这份文件的用途

这份文件是当前 HIS 网站项目的“快速导航图”。

作用：

1. 让任何人快速知道每个页面负责什么
2. 快速定位每个页面依赖哪些图片、数据、文档、视频
3. 避免以后改文件时不知道会影响哪里
4. 当 Trae 上下文中断时，作为最实用的接力入口之一

## 2. 站点整体结构

当前站点可以理解为：

首页总入口 -> 产品页 / 项目页 / 里程碑页 -> 联系页转化

角色分工如下：

- `index.html`：总入口，负责品牌、方案、信任感、跳转
- `product-*.html`：负责讲产品价值与能力
- `project.html`：负责展示案例与交付证明
- `company-profile.html`：负责强化公司历史与品牌信任
- `contact.html`：负责落地联系与线下转化

## 3. 页面总表

### `index.html`

用途：

- 首页
- 负责展示品牌主张、解决方案入口、客户背书、下载入口

主要区块：

- 顶部导航
- Hero 视频
- 信任数据区
- 解决方案卡片
- 客户 logo 墙
- Company Profile 下载
- 页脚 CTA

主要依赖文件：

- `assets/brand/HIS Name Logo.jpg`
- `assets/videos/hero-video.mp4`
- `assets/images/iso-9001-icon.png`
- `assets/images/safety-compliant-icon.png`
- `assets/images/sime-darby-logo.png`
- `High-End Workstation & Rollar Cabinet1.png`
- `Smart Cabinet (RFID VLM).png`
- `AGV Solutions.png`
- `Tooling1.png`
- `assets/customer-logos/` 下多张 logo
- `ASMPT-removebg-preview.png`
- `assets/docs/HIS Company Profile.pdf`

主要跳转去向：

- `product-workstation.html`
- `product-smart-cabinet.html`
- `product-agv.html`
- `company-profile.html`
- `contact.html`

### `product-workstation.html`

用途：

- Workstation 产品介绍页

主要区块：

- 顶部导航
- 产品 Hero
- 关键能力说明
- 5-Step Customization Engine
- 引导去案例页
- 页脚 CTA

主要依赖文件：

- `assets/brand/HIS Name Logo.jpg`
- `High-End Workstation & Rollar Cabinet1.png`

主要跳转去向：

- `project.html`
- `contact.html`

### `product-smart-cabinet.html`

用途：

- Smart Cabinet / RFID / VLM 产品介绍页

主要区块：

- 顶部导航
- 产品 Hero
- Key Capabilities
- 3-Phase Smart Inventory Loop
- 引导去案例页
- 页脚 CTA

主要依赖文件：

- `assets/brand/HIS Name Logo.jpg`
- `Smart Cabinet (RFID VLM).png`

主要跳转去向：

- `project.html`
- `contact.html`

### `product-agv.html`

用途：

- AGV 产品介绍页

主要区块：

- 顶部导航
- 产品 Hero
- 品牌背书区
- Key Capabilities
- The Core Fleet
- AGV Deployment 流程
- 引导去案例页
- 页脚 CTA

主要依赖文件：

- `assets/brand/HIS Name Logo.jpg`
- `AGV Solutions.png`

主要跳转去向：

- `project.html`
- `contact.html`

### `project.html`

用途：

- 项目案例页
- 用来证明交付能力与落地场景

主要区块：

- 顶部导航
- 分类筛选按钮
- 案例图片列表
- 评论 / 背书区域
- Company Profile 下载
- 页脚 CTA

主要依赖文件：

- `assets/brand/HIS Name Logo.jpg`
- `assets/projects/` 下案例图片
- `assets/docs/Comment_Bg.JPG`
- `assets/docs/HIS Company Profile.pdf`

主要跳转去向：

- `company-profile.html`
- `contact.html`

### `company-profile.html`

用途：

- 公司介绍 / 里程碑页
- 用来强化品牌成长路径与公司可信度

主要区块：

- 顶部导航
- 首屏介绍
- Company Profile PDF 下载
- Milestone 时间线
- 页脚 CTA

主要依赖文件：

- `assets/brand/HIS Name Logo.jpg`
- `assets/docs/Comment_Bg.JPG`
- `assets/docs/HIS Company Profile.pdf`
- `assets/data/company-timeline.js`
- `assets/data/company-timeline.json`

数据逻辑：

- 优先读取 `assets/data/company-timeline.js`
- 若 JS 数据不可用，再回退读取 `assets/data/company-timeline.json`

主要跳转去向：

- `product-workstation.html`
- `product-smart-cabinet.html`
- `product-agv.html`
- `contact.html`

### `contact.html`

用途：

- 联系页
- 展示门店、展厅、地图、营业时间、联络方式

主要区块：

- 顶部导航
- 多地区地址模块
- Google Maps 嵌入
- JB 展厅视频入口
- WhatsApp 联系按钮
- 页脚 CTA

主要依赖文件：

- `assets/brand/HIS Name Logo.jpg`
- 外部 Google Maps iframe
- 外部 YouTube 缩略图

主要跳转去向：

- 站内主要页面导航
- 各地区 WhatsApp 联系方式

## 4. 数据文件与用途

### `assets/data/company-timeline.js`

用途：

- 目前里程碑页优先使用的主数据文件
- 通过全局变量方式提供时间线数据

为什么重要：

- 这是 `company-profile.html` 当前最关键的数据来源
- 修改这里，最容易直接影响 Milestone 页面内容

### `assets/data/company-timeline.json`

用途：

- 里程碑页备用数据源

为什么重要：

- 当 JS 数据没有成功加载时，页面会尝试回退到这个 JSON

## 5. 素材目录说明

### `assets/brand/`

用途：

- 品牌 Logo

### `assets/customer-logos/`

用途：

- 客户 / 合作品牌 logo 墙素材

### `assets/images/`

用途：

- 图标与通用说明图

### `assets/projects/`

用途：

- 项目案例图片

### `assets/videos/`

用途：

- 首页视频等动态素材

### `assets/docs/`

用途：

- PDF、背景图、参考文档

已知被页面直接使用的文件：

- `HIS Company Profile.pdf`
- `Comment_Bg.JPG`

## 6. 维护最常改的文件

如果以后只是做普通维护，通常最常改这些：

1. `index.html`
2. `company-profile.html`
3. `project.html`
4. `product-workstation.html`
5. `product-smart-cabinet.html`
6. `product-agv.html`
7. `assets/data/company-timeline.js`
8. `使用手册.txt`

## 7. 当前发现的注意点

### 注意点 1

`company-profile.html` 同时依赖 `js` 和 `json` 两份时间线数据。

这表示：

- 以后若只改其中一份，另一份可能会变成旧资料
- 最稳做法是主改 `company-timeline.js`，并定期检查 `company-timeline.json` 是否仍需要同步

### 注意点 2

`contact.html` 内部导航有不少 `target="_blank"`。

这会导致：

- 用户点站内链接时跳出新标签
- 行为和其他页面不一致

后续如要统一体验，可考虑移除这些站内链接的 `target="_blank"`

### 注意点 3

项目根目录仍有不少直接被页面引用的图片，不全在 `assets/` 目录内。

这表示：

- 未来若做素材整理，不能随便移动根目录图片
- 需要先统一盘点引用关系再搬迁

## 8. 推荐使用方法

以后你可以直接这样叫我：

- “先读 `PAGE_FILE_MAP.md`，再帮我改首页”
- “先读 `PAGE_FILE_MAP.md` 和 `PROJECT_BRIEF.md`，再帮我做 AGV 页面优化”
- “先根据 `PAGE_FILE_MAP.md` 检查哪些图片可以整理到 `assets/`”
