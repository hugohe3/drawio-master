# Draw.io 流程图自动生成器

<div align="center">

**用自然语言，生成专业流程图**

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![Draw.io](https://img.shields.io/badge/Draw.io-Compatible-orange.svg)](https://www.diagrams.net/)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md)
[![Documentation](https://img.shields.io/badge/docs-complete-success.svg)](docs/)

[快速开始](#快速开始) • [文档](docs/) • [示例](examples/) • [贡献指南](CONTRIBUTING.md)

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

| 图表类型 | 说明 | 适用场景 |
|---------|------|---------|
| **流程图** | 业务流程、决策树 | 工作流程、算法逻辑 |
| **架构图** | 系统架构、技术栈 | 技术文档、系统设计 |
| **思维导图** | 层次结构、知识图谱 | 头脑风暴、知识整理 |
| **组织结构图** | 公司架构、团队层级 | 组织管理、汇报关系 |
| **实体关系图** | 数据模型、ER 图 | 数据库设计、对象关系 |
| **AWS 架构图** | 云服务架构 | 云架构设计、技术方案 |
| **泳道图** | 跨部门流程 | 协作流程、责任划分 |

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

### 查看更多示例

查看 `examples/` 目录获取完整示例文件

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

