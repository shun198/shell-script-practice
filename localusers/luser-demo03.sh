#!/bin/bash

# Display UID and username of the user
# DIsplay if user is vagrant or not

echo "Your UID is $UID"

UID_TO_TEST="1000"
if [ $UID != $UID_TO_TEST ]
then
    echo "Your UID does not match"
    exit 1
fi

# Display the username
USERNAME=$(id -un)

# Test if the command succeeded
# ${?}内に最新のexit codeが格納されている
if [ ${?} != 0 ]
then
    echo "The id command did not execute successfully"
    exit 1
fi
echo "Your username is $USERNAME"
exit 0
