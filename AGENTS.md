# Draw.io Agent 技术文档

## 概述

本 Agent 是一个专门生成 Draw.io 流程图的 AI 助手，能将自然语言描述转换为标准的 Draw.io XML 文件。

## 核心能力

### 1. 需求理解
- 接收自然语言描述
- 理解流程、架构、组织结构
- 转换为图表结构

### 2. 自动布局
- 智能计算节点位置
- 优化连接线路由
- 自动调整间距对齐
- 控制在可视区域（800x600）

### 3. 样式设计
- 自动选择合适形状和颜色
- 统一配色方案
- 专业视觉效果

## 工作流程

```
用户输入需求
    ↓
需求分析与理解
    ↓
确定图表类型和结构
    ↓
计算节点位置和布局
    ↓
生成 Draw.io XML
    ↓
输出完整的 .drawio 文件
```

## Agent 提示词架构

### 系统角色定义
Agent 被定义为 Draw.io 图表生成专家，专注于：
- 将用户需求转换为有效的 Draw.io XML
- 不提供多余解释，直接输出结果
- 保持高效、专业的工作方式

### 输出要求
1. **格式严格性**：仅输出有效的 Draw.io XML 格式
2. **结构完整性**：包含所有必需的 XML 元素（mxfile、diagram、mxGraphModel 等）
3. **元素规范性**：确保所有元素具有正确的 ID、几何属性和样式
4. **零冗余输出**：不提供额外说明或评论

### 布局规则
- **可视区域限制**：x (0-800), y (0-600)
- **容器最大尺寸**：宽 700px，高 550px
- **起始边距**：从 (40, 40) 开始
- **紧凑布局**：所有元素集中在一个视图内

### 支持的图表类型
- 流程图（Flowcharts）
- 思维导图（Mind Maps）
- 实体关系图（Entity Diagrams）
- 架构图（Architecture Diagrams）
- 技术插图（Technical Illustrations）
- 组织结构图（Organizational Charts）
- 业务流程图（Process Flows）
- AWS 架构图（使用 AWS 2025 图标）
- 泳道图（Swimlane Diagrams）
- 甘特图（Gantt Charts）
- RACI 矩阵（RACI Matrix）
- 产品路线图（Product Roadmaps）
- 平面布局图（Layout Diagrams）

## Draw.io XML 核心知识

### 文件结构
```xml
<mxfile>
  <diagram>
    <mxGraphModel>
      <root>
        <mxCell id="0"/>
        <mxCell id="1" parent="0"/>
        <!-- 图表元素 -->
      </root>
    </mxGraphModel>
  </diagram>
</mxfile>
```

### 关键元素

#### 1. 形状节点（Vertex）
```xml
<mxCell id="2" 
        value="节点文本" 
        style="rounded=0;whiteSpace=wrap;html=1;fillColor=#dae8fc;strokeColor=#6c8ebf;" 
        vertex="1" 
        parent="1">
  <mxGeometry x="100" y="100" width="120" height="60" as="geometry"/>
</mxCell>
```

#### 2. 连接线（Edge）
```xml
<mxCell id="3" 
        style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;endArrow=classic;" 
        edge="1" 
        parent="1" 
        source="2" 
        target="4">
  <mxGeometry relative="1" as="geometry"/>
</mxCell>
```

### 常用形状类型
| 形状 | style 值 |
|------|----------|
| 矩形 | `shape=rectangle` |
| 椭圆 | `shape=ellipse` |
| 菱形 | `shape=rhombus` |
| 圆柱 | `shape=cylinder` |
| 云形 | `shape=cloud` |
| 六边形 | `shape=hexagon` |

### 样式属性

#### 填充与边框
- `fillColor=#dae8fc` - 填充颜色
- `strokeColor=#6c8ebf` - 边框颜色
- `strokeWidth=2` - 边框宽度

#### 文本样式
- `fontSize=14` - 字体大小
- `fontStyle=1` - 粗体（0=正常, 1=粗体, 2=斜体）
- `fontColor=#000000` - 文字颜色

#### 箭头样式
- `endArrow=classic` - 终点箭头（classic、open、oval、diamond、block、none）
- `startArrow=none` - 起点箭头

#### 布局属性
- `rounded=1` - 圆角
- `edgeStyle=orthogonalEdgeStyle` - 正交连接线

## 使用示例

### 简单流程图
```
创建用户登录流程图：
开始 → 输入密码 → 验证 
→ 成功则进入系统，失败则重新输入
```

### 技术架构图
```
三层架构：
前端：CloudFront + S3
应用层：ELB + EC2
数据层：RDS + ElastiCache
```

### 组织结构图
```
公司架构：
CEO
├── CTO（开发部、测试部）
├── CFO（财务部、审计部）
└── COO（运营部、市场部）
```

## 使用建议

### 需求描述
- 清晰说明图表类型
- 列出所有节点和关系
- 说明特殊要求（颜色、样式）

### 复杂度控制
- 单个图表 ≤ 20 个节点
- 复杂流程分解为多个子图
- 使用分组或泳道组织

### 质量标准
- ✅ 可直接在 Draw.io 打开
- ✅ 元素在可视区域内
- ✅ 布局合理无重叠
- ✅ 样式统一专业

## 技术参考

### Draw.io 元素 ID 管理
- ID "0" 和 "1" 为系统保留
- 其他元素 ID 从 2 开始递增
- 每个元素必须有唯一 ID

### 几何属性（mxGeometry）
- **shapes**: `x`, `y`, `width`, `height`
- **connectors**: `relative="1"` + 源/目标点

### 高级功能
- **分组**：创建父容器，子元素 parent 指向容器 ID
- **泳道**：使用 `swimlane` 样式
- **表格**：使用 `shape=table` 及行列结构
- **自定义属性**：通过 Object 标签添加元数据

## 与其他工具集成

### 推荐工作流
1. 使用本 Agent 生成初始图表
2. 导入 Draw.io 进行微调
3. 导出为 PNG、SVG 或 PDF
4. 集成到文档或演示文稿中

### 版本控制
- Draw.io 文件是纯文本 XML，适合 Git 管理
- 建议将生成的文件保存在 `projects/` 目录
- 示例文件存放在 `examples/` 目录

## 限制与注意事项

1. **当前不支持**：
   - 图片嵌入（仅支持形状和文字）
   - 复杂的数学公式
   - 动画效果

2. **最佳尺寸**：
   - 单页图表保持在 800x600 以内
   - 超大图表考虑分页或拆分

3. **文本处理**：
   - 支持基本 HTML 标签
   - 换行使用 `<br>` 标签
   - 特殊字符需要 XML 转义

## 持续改进

Agent 会不断优化：
- 更智能的布局算法
- 更丰富的形状库
- 更好的需求理解能力
- 支持更多图表类型

---

**提示词文件位置**：`roles/drawio_prompt.md`  
**示例文件目录**：`examples/`  
**项目输出目录**：`projects/`

