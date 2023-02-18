#!/bin/bash

# Display the UID and username of the user executing this script
# Display if the user is the root user or not

# Display UID
echo "Your UID is $UID"

# Display username
USERNAME=$(id -un)
# USERNAME=`id -un`でも同じ出力結果
echo "Your username is $USERNAME"

# Display if user is root or not
# 条件式を書くときは条件を[[]]内に書く
# -eq はequalの意味
# 0 はexit code0の時
# rootユーザのUIDは0
if [[ ${UID} -eq 0 ]]
then
    echo 'You are root'
else
    echo 'You are not root'
fi

# 条件式を書くときは[]でも[[]]と同じ
# =でも-eqと同じ意味になる
if [ ${UID} = 0 ]
then
    echo 'You are root'
else
    echo 'You are not root'
fi
