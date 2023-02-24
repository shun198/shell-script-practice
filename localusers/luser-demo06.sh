#!/bin/bash
set -eu

# $0内にファイルパスが格納される
echo "You executed this command: $0"

for fruits in "apple" "banana" "melon"
do
    echo $fruits
done
