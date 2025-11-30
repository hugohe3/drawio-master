# Projects 目录

此目录用于存放用户使用 AI Agent 生成的实际项目文件。

## 📁 目录结构

```
projects/
├── 未分类/          # 待整理的文件
├── 10学习/          # 学习相关流程图
├── 管理经济学作业/   # 课程作业相关
└── [你的项目名]/     # 自定义项目目录
```

## 📝 使用规范

### 文件命名

- 使用清晰的描述性名称
- 建议格式：`[主题]_[类型].drawio`
- 示例：`用户登录_流程图.drawio`、`系统架构_架构图.drawio`

### 目录组织

- 按项目或主题创建子目录
- 相关文件放在同一目录
- 定期整理 `未分类/` 中的文件

### 注意事项

- ❌ 不要提交 `.bkp` 备份文件（已在 `.gitignore` 中排除）
- ✅ 提交前运行 `./scripts/validate_drawio.sh projects/` 验证格式
- 💡 复杂项目可以创建子目录的 README 说明

## 🔍 验证文件

```bash
# 验证所有项目文件
./scripts/validate_drawio.sh projects/

# 验证特定目录
./scripts/validate_drawio.sh projects/未分类/
```
