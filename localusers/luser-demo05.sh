#!/bin/bash

# This script generates a list to random password

# A random number as a password
PASSWORD=$RANDOM
echo $PASSWORD

# Three random numbers together.
PASSWORD="${RANDOM}${RANDOM}${RANDOM}"
echo "${PASSWORD}"
