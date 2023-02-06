#!/bin/bash
set -eu

# 第1引数、第2引数、第3引数を出力
# 例:sh shell-script/argument.sh A B C
# A B C が出力される
echo $1 $2 $3

# ファイル名を出力
echo $0

# 全引数を出力
echo $@

# 引数の数を出力
echo $#

# 直前に実行したコマンドの戻り値
# 成功したら0、失敗したらそれ以外
echo $?

