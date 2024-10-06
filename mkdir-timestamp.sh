
# 检查参数数量
if [ "$#" -lt 1 ]; then
    echo "用法: bash create-react-component.sh <组件名称>"
    exit 1
fi

file_categary=$(echo "$@" | tr ' ' '-')

timestamp=$(date +%s)
formatted_time=$(date -d @$timestamp +"%H:%M:%S")
filename="$file_categary-$timestamp-$formatted_time"

echo ${filename}
mkdir ${filename}
