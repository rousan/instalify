#!/bin/bash

set -e

LINUX_ARTIFACT="https://github.com/passcod/cargo-watch/releases/download/v7.3.0/cargo-watch-v7.3.0-x86_64-unknown-linux-gnu.tar.xz"
MACOS_ARTIFACT="https://github.com/passcod/cargo-watch/releases/download/v7.3.0/cargo-watch-v7.3.0-x86_64-apple-darwin.tar.xz"

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  curl -fsSL "$LINUX_ARTIFACT" --output /tmp/instalify.output.tar.xz
  tar -xf /tmp/instalify.output.tar.xz -C /usr/local/bin/
  rm -rf /tmp/instalify.output.tar.xz
elif [[ "$OSTYPE" == "darwin"* ]]; then
  curl -fsSL "$MACOS_ARTIFACT" --output /tmp/instalify.output.tar.xz
  tar -xf /tmp/instalify.output.tar.xz -C /usr/local/bin/
  rm -rf /tmp/instalify.output.tar.xz
elif [[ "$OSTYPE" == "freebsd"* ]]; then
  echo "Freebsd artifacts not found"
else
  echo "Unknow target"
fi
