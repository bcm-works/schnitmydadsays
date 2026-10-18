#!/usr/bin/env bash
#
#
# Create a new site build
#
#

REPO="$(cd "$(dirname "$0")/.." && pwd)"
BUILD_FILE="build/schnitmydadsays.tar.gz"

cd "$REPO"

mkdir -p "$REPO/build"

tar --exclude='.git' \
  --exclude='bin' \
  --exclude='build' \
  --exclude='.gitignore' \
  --exclude='CNAME' \
  --exclude='LICENSE' \
  --exclude='README.md' \
  -cz . \
  > "$REPO/$BUILD_FILE" > /dev/null

echo "Build completed - $BUILD_FILE"

