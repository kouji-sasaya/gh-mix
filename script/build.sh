#!/usr/bin/env bash
set -e
echo "TODO implement this script."
echo "It should build binaries in dist/<platform>-<arch>[.exe] as needed."
cp -v ./gh-mix ./dist
cp -v ./build/c/gh-mix-c/gh-mix-c ./dist
cp -v ./build/cpp/gh-mix-cpp/gh-mix-cpp ./dist
cp -v ./build/rust/gh-mix-rust/release/gh-mix-rust ./dist

exit 0
