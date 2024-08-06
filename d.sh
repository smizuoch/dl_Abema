#!/bin/bash

# 使用方法をチェック
if [ "$#" -ne 4 ]; then
  echo "使用方法: $0 シリーズID シリーズ番号 開始話数 終了話数"
  exit 1
fi

# 引数から情報を取得
series_id=$1
series_number=$2
start=$3
end=$4

# yt-dlp コマンドを指定された話数の範囲で繰り返し実行
for i in $(seq $start $end)
do
  yt-dlp -f b "https://abema.tv/video/episode/${series_id}_s${series_number}_p$i"
done
