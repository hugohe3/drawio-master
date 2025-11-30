#!/bin/bash
# validate_drawio.sh - 验证 Draw.io 文件格式
# 用法: ./scripts/validate_drawio.sh [目录或文件]

set -e

# 颜色定义
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# 检查 xmllint 是否安装
if ! command -v xmllint &> /dev/null; then
    echo -e "${RED}错误: 未找到 xmllint${NC}"
    echo "请安装:"
    echo "  macOS:  brew install libxml2"
    echo "  Ubuntu: sudo apt-get install libxml2-utils"
    exit 1
fi

# 确定搜索路径
SEARCH_PATH="${1:-.}"

echo "🔍 在 $SEARCH_PATH 中搜索 .drawio 文件..."
echo ""

# 查找文件（排除隐藏文件和备份文件）
files=$(find "$SEARCH_PATH" -name "*.drawio" -type f ! -name ".*" ! -name "*.bkp" 2>/dev/null || true)

if [ -z "$files" ]; then
    echo -e "${YELLOW}⚠️  未找到 .drawio 文件${NC}"
    exit 0
fi

file_count=$(echo "$files" | wc -l | tr -d ' ')
echo "📋 找到 $file_count 个文件需要验证"
echo "─────────────────────────────────────"

errors=0
valid=0

for file in $files; do
    printf "%-50s " "$file"
    
    # 检查 XML 格式
    if ! xmllint --noout "$file" 2>/dev/null; then
        echo -e "${RED}❌ XML 格式错误${NC}"
        errors=$((errors + 1))
        continue
    fi
    
    # 检查必需的 Draw.io 元素
    if ! grep -q "<mxfile" "$file"; then
        echo -e "${RED}❌ 缺少 <mxfile>${NC}"
        errors=$((errors + 1))
        continue
    fi
    
    if ! grep -q "<diagram" "$file"; then
        echo -e "${RED}❌ 缺少 <diagram>${NC}"
        errors=$((errors + 1))
        continue
    fi
    
    if ! grep -q "<mxGraphModel" "$file"; then
        echo -e "${RED}❌ 缺少 <mxGraphModel>${NC}"
        errors=$((errors + 1))
        continue
    fi
    
    echo -e "${GREEN}✅${NC}"
    valid=$((valid + 1))
done

echo "─────────────────────────────────────"
echo ""

if [ $errors -gt 0 ]; then
    echo -e "${RED}❌ 验证失败: $errors 个文件有错误, $valid 个文件通过${NC}"
    exit 1
else
    echo -e "${GREEN}✅ 全部 $valid 个文件验证通过${NC}"
    exit 0
fi
