#!/usr/bin/env bash


# Liux や、WSL2の場合。
if [ ${ARTIFACT} = "linux-amd64" ]; then
  mv ./gh-mix ./dist/${ARTIFACT}
# Windowsの場合。バッチファイルはい用意していない、動作実績は無い。
elif [ ${ARTIFACT} = "windows-amd64" ]; then
  mv ./gh-mix.bat ./dist/${ARTIFACT}
fi
