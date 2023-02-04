#!/bin/bash
set -eu

vegetables=("tomato" "carrot" "onion")

# 配列内の全ての要素を表示
echo ${vegetables[@]}
# インデックス0の要素を表示
echo ${vegetables[0]}
# インデックスを表示
echo ${!vegetables[@]}
# 配列の要素数を表示
echo ${#vegetables[@]}
# 要素を削除
unset vegetables[2]
echo ${vegetables[@]}
