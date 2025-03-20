#!/usr/bin/env bash
set -e
echo "TODO implement this script."
echo "It should build binaries in dist/<platform>-<arch>[.exe] as needed."
exec gh api user --jq '"You are @\(.login) (\(.name))."'
mv "build/rust/target/${TARGET}/release/gh-activity" "./dist/${ARTIFACT}"
exit 0
