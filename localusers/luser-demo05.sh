#!/bin/bash
set -eu
# This script generates a list to random password

# A random number as a password
PASSWORD=$RANDOM
echo $PASSWORD

# Three random numbers together.
PASSWORD=$RANDOM$RANDOM$RANDOM
echo $PASSWORD

# Use current date/time as the basis for the password
PASSWORD=$(date +%s)
echo $PASSWORD

PASSWORD=$(date +%s%N)
echo $PASSWORD

