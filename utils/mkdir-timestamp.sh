
# 检查参数数量
if [ "$#" -lt 1 ]; then
    echo "用法: bash create-react-component.sh <组件名称>"
    exit 1
fi

file_categary=$(echo "$@" | tr ' ' '-')

year=$(date +%Y)
month=$(date +%m)
day=$(date +%d)
weekday=$(date +%A)

# 替换中文星期为英文
case $weekday in
   "星期一") weekday="Monday" ;;
   "星期二") weekday="Tuesday" ;;
   "星期三") weekday="Wednesday" ;;
   "星期四") weekday="Thursday" ;;
   "星期五") weekday="Friday" ;;
   "星期六") weekday="Saturday" ;;
   "星期日") weekday="Sunday" ;;
esac

timestamp=$(date +%s)
formatted_time=$(date -d @$timestamp +"%H_%M_%S")
filename="$year$month$day$weekday$timestamp-$file_categary"

echo ${filename}
mkdir ${filename}
