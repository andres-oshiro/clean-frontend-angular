#!/bin/bash -eux

COLOR_OFF="\033[0m"
COLOR_GREEN="\033[0;32m"
COLOR_RED="\033[0;31m"
REQUIRED_NODE_VERSION="v$(cat package.json \
  | grep node \
  | head -1 \
  | awk -F: '{ print $2 }' \
  | sed 's/[", \n]//g')"
node_version=""

# Verify node command
if ! command -v node &> /dev/null; then
  echo "$COLOR_GREEN - ERROR: Required Node v$REQUIRED_NODE_VERSION.$COLOR_OFF"
  exit 1
fi

# Verify node version
node_version=$(node -v)
if [[ "$node_version" != "$REQUIRED_NODE_VERSION" ]]; then
  echo "$COLOR_GREEN - ERROR: Required Node v$REQUIRED_NODE_VERSION.$COLOR_OFF"
  exit 1
fi

# Verify editor
if ! command -v codium &> /dev/null && ! command -v code &> /dev/null; then
    echo "$COLOR_RED - ERROR: You need to install VScodium or VScode.$COLOR_OFF"
    exit 1
fi
