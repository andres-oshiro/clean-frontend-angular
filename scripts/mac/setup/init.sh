#!/bin/bash -eux

# TODO: Make interactive shell
# - Ex:
#   Which editor do you want to use?
#    > VScode
#    > VScodium

COLOR_OFF="\033[0m"
COLOR_GREEN="\033[0;32m"
COLOR_RED="\033[0;31m"
error_message=""

on_error()
{
  echo $COLOR_RED$error_message$COLOR_OFF
  exit 1
}

######################## Start ########################
echo "$COLOR_GREEN Setup start$COLOR_OFF"

# Start Verify
error_message=`sh scripts/mac/setup/verify.sh` || on_error


# Start Install
error_message=`sh scripts/mac/setup/install.sh` || on_error

######################### End #########################
echo "$COLOR_GREEN Setup completed$COLOR_OFF"
