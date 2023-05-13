#!/bin/bash -eux

COLOR_OFF="\033[0m"
COLOR_GREEN="\033[0;32m"
COLOR_RED="\033[0;31m"
REQUIRED_NODE_VERSION="v$(cat package.json \
  | grep node \
  | head -1 \
  | awk -F: '{ print $2 }' \
  | sed 's/[", \n]//g')"
error_message=""
editor_command=""

on_error()
{
  echo $COLOR_RED$error_message$COLOR_OFF
  exit 1
}

# Install node_modules
error_message=`npm ci 2>&1` || on_error
echo "$COLOR_GREEN - Node modules installed.$COLOR_OFF"


# Verify editor
if which code > /dev/null; then
  editor_command="code"
else
  if which codium > /dev/null; then
    editor_command="codium"
  else
    echo "$COLOR_RED - ERROR: Install extensions for VS$editor_command.$COLOR_OFF"
    exit 1
  fi
fi

# Install Extensions [ONLY REQUIRED EXTENSIONS]
error_message=`$editor_command --install-extension "dbaeumer.vscode-eslint" 2>&1` || on_error
error_message=`$editor_command --install-extension "esbenp.prettier-vscode" 2>&1` || on_error
error_message=`$editor_command --install-extension "streetsidesoftware.code-spell-checker" 2>&1` || on_error
error_message=`$editor_command --install-extension "usernamehw.errorlens" 2>&1` || on_error
error_message=`$editor_command --install-extension "saikou9901.evilinspector" 2>&1` || on_error
error_message=`$editor_command --install-extension "shardulm94.trailing-spaces" 2>&1` || on_error
error_message=`$editor_command --install-extension "aaron-bond.better-comments" 2>&1` || on_error
echo "$COLOR_GREEN - VS$editor_command extensions installd.$COLOR_OFF"
