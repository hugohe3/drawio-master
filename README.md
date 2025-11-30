# Draw.io 流程图自动生成器

<div align="center">

**用自然语言，生成专业流程图**

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![Draw.io](https://img.shields.io/badge/Draw.io-Compatible-orange.svg)](https://www.diagrams.net/)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md)
[![Documentation](https://img.shields.io/badge/docs-complete-success.svg)](AGENTS.md)

[快速开始](#快速开始) • [文档](AGENTS.md) • [示例](examples/) • [贡献指南](CONTRIBUTING.md)

</div>

## 📋 项目简介

这是一个基于 AI 的 Draw.io 流程图自动生成工具。只需用自然语言描述您的需求，AI Agent 就能自动生成标准的 Draw.io XML 文件，让您无需手动绘图即可创建专业的流程图、架构图、思维导图等各类图表。

### 核心优势

- ✨ **自然语言输入**：用日常语言描述需求，无需学习复杂的绘图工具
- 🎨 **专业美观**：自动优化布局和样式，生成专业级别的图表
- ⚡ **高效快速**：几秒钟生成复杂流程图，节省大量时间
- 🔄 **标准格式**：生成标准 Draw.io XML，可直接导入编辑
- 🎯 **智能布局**：自动计算节点位置，避免重叠和混乱

## 🚀 快速开始

### 三步生成流程图

1. **准备提示词**

   - 将 `roles/drawio_prompt.md` 内容提供给 AI（Claude/ChatGPT）

2. **描述需求**

   ```
   创建一个用户登录流程图：
   开始 → 输入用户名密码 → 验证身份
   → 成功则进入系统，失败则重新输入
   ```

3. **保存使用**
   - AI 输出 XML 内容，保存为 `.drawio` 文件
   - 在 [Draw.io](https://app.diagrams.net/) 中打开编辑

### 项目结构

```
drawio-master/
├── README.md                 # 项目说明
├── AGENTS.md                 # Agent 技术文档
├── roles/
│   └── drawio_prompt.md     # AI 提示词（核心）
├── examples/                # 示例文件
└── projects/                # 输出目录
```

## 📊 支持的图表类型

| 图表类型       | 说明               | 适用场景             |
| -------------- | ------------------ | -------------------- |
| **流程图**     | 业务流程、决策树   | 工作流程、算法逻辑   |
| **架构图**     | 系统架构、技术栈   | 技术文档、系统设计   |
| **思维导图**   | 层次结构、知识图谱 | 头脑风暴、知识整理   |
| **组织结构图** | 公司架构、团队层级 | 组织管理、汇报关系   |
| **实体关系图** | 数据模型、ER 图    | 数据库设计、对象关系 |
| **AWS 架构图** | 云服务架构         | 云架构设计、技术方案 |
| **泳道图**     | 跨部门流程         | 协作流程、责任划分   |
| **甘特图**     | 项目进度计划       | 项目管理、资源规划   |
| **RACI 矩阵**  | 责任分配表         | 团队协作、职责明确   |
| **产品路线图** | 战略规划时间线     | 产品管理、季度规划   |
| **平面布局图** | 空间平面设计       | 商业设计、空间规划   |

## 💡 使用示例

### 业务流程图

```
创建用户注册流程图（竖向布局）：
1. 开始
2. 填写注册信息
3. 验证邮箱
4. 判断验证结果
   - 成功 → 创建账户
   - 失败 → 返回填写
5. 注册完成
6. 结束
```

### 技术架构图

```
创建微服务架构图：
前端层：Web App、Mobile App
网关层：API Gateway
服务层：用户服务、订单服务、支付服务
数据层：MySQL、Redis
```

### 精选示例库

`examples/` 目录包含 13 个精美的示例图表，涵盖所有图表类型：

| 示例文件                             | 类型           | 描述                                    |
| ------------------------------------ | -------------- | --------------------------------------- |
| `flowchart_onboarding.drawio`        | 流程图         | 员工入职完整流程（含决策节点）          |
| `architecture_ecommerce.drawio`      | 架构图         | 电商平台三层架构（前端/应用/数据）      |
| `mindmap_project_planning.drawio`    | 思维导图       | 项目规划四维度（需求/技术/团队/质量）   |
| `orgchart_company.drawio`            | 组织结构图     | 公司组织架构（CEO→ 高管 → 部门 → 团队） |
| `er_diagram_blog.drawio`             | ER 图          | 博客系统数据模型（含主外键关系）        |
| `aws_architecture_webapp.drawio`     | AWS 架构图     | AWS 三层 Web 应用（多可用区+负载均衡）  |
| `swimlane_order_process.drawio`      | 泳道图（竖向） | 订单处理流程（5 个系统交互）            |
| `swimlane_product_launch.drawio`     | 泳道图（横向） | 产品立项审批流程（3 个角色协作）        |
| `gantt_chart_project.drawio`         | 甘特图         | 软件开发项目进度管理（7 周周期）        |
| `raci_matrix.drawio`                 | RACI 矩阵      | 项目责任分配矩阵（6 任务 ×5 角色）      |
| `roadmap_product_development.drawio` | 产品路线图     | 2025 年产品开发战略规划（Q1-Q4）        |
| `supermarket_layout.drawio`          | 平面布局图     | 超市卖场平面布局（收银+商品区）         |
| `department_store_layout.drawio`     | 平面布局图     | 百货公司楼层布局（多品类+配套设施）     |

💡 **提示**：这些示例可以直接在 [Draw.io](https://app.diagrams.net/) 中打开，并作为模板使用

## 🎨 样式定制

在需求中可以指定样式：

```
创建流程图，使用蓝色主题，圆角矩形
```

**默认配色：**

- 蓝色：流程节点
- 绿色：开始/成功
- 红色：结束/错误
- 黄色：判断/警告

## 🛠️ 技术说明

- **格式**：Draw.io XML (mxGraph)
- **核心文件**：`roles/drawio_prompt.md` - AI 提示词
- **详细文档**：[AGENTS.md](AGENTS.md) - 技术原理

### 与 AI 配合使用

1. 将 `roles/drawio_prompt.md` 提供给 AI
2. 描述您的需求
3. AI 输出 XML 文件
4. 在 Draw.io 中打开编辑

## 💡 使用技巧

### 清晰描述需求

✅ **好的描述**

```
创建用户登录流程图（竖向）：
1. 开始
2. 输入用户名密码
3. 验证（菱形判断）
   - 成功 → 进入系统
   - 失败 → 返回输入
4. 结束
```

❌ **不好的描述**

```
做个登录的图
```

## 🤝 参与贡献

欢迎提交 Issue 和 Pull Request！

详见 [CONTRIBUTING.md](CONTRIBUTING.md)

## ❓ 常见问题

**Q: 生成的文件打不开？**  
A: 确保文件是完整的 XML 格式，包含 `<mxfile>` 标签

**Q: 支持中文吗？**  
A: 完全支持中文

**Q: 可以导出什么格式？**  
A: PNG、SVG、PDF 等多种格式

**Q: 如何让布局更美观？**  
A: 在需求中明确说明布局方向和间距要求

## 📚 相关资源

- [Draw.io 官网](https://www.diagrams.net/)
- [项目示例](examples/)
- [技术文档](AGENTS.md)

## 🎯 项目特色

### 丰富的示例库

- ✅ 13 个精美示例，涵盖常见业务场景
- ✅ 每个示例都包含真实业务逻辑
- ✅ 专业配色方案，可直接用于生产环境
- ✅ 可作为模板快速定制

### 智能生成引擎

- 🧠 理解自然语言需求描述
- 📐 自动计算最优布局
- 🎨 智能配色和样式美化
- 🔗 自动处理节点连接关系

### 标准化输出

- 📦 完全兼容 Draw.io
- 🔄 支持后续手动编辑
- 💾 纯文本格式，便于版本控制
- 🌐 可导出多种格式（PNG/SVG/PDF）

## 📄 许可证

本项目采用 MIT 许可证。您可以自由使用、修改和分发。

## 🌟 致谢

- Draw.io 团队提供的优秀开源图表工具
- mxGraph 提供的强大图表引擎
- AI 技术让自动化图表生成成为可能

---

<div align="center">

**让 AI 帮您自动生成流程图！**

</div>
