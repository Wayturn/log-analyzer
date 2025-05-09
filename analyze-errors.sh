#!/bin/bash

# 檢查是否有傳入檔名
if [ -z "$1" ]; then
  echo "用法：./analyze-errors.sh <log檔案路徑>"
  exit 1
fi

# 設定輸出檔名，含當下時間戳
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
output_file="error-report-$timestamp.txt"

# 執行分析並輸出成檔案
cat "$1" \
  | grep 'ERROR' \
  | cut -d':' -f4- \
  | sort \
  | uniq -c \
  | sort -nr \
  | head -n 10 > "$output_file"

# 通知使用者
echo "分析完成，結果已儲存於：$output_file"
