#!/bin/bash

# GitHub CLI拡張機能のインストールディレクトリ
INSTALL_DIR="$HOME/.local/share/gh/extensions/gh-mix"

# リリースアセットのURL
ASSET_URL="https://github.com/kouji-sasaya/gh-mix/releases/download/${VERSION}/gh-mix_${VERSION}_${ARTIFACT}.tar.gz"

# インストールディレクトリを作成
mkdir -p "$INSTALL_DIR"

# リリースアセットをダウンロード
curl -L "$ASSET_URL" -o "$INSTALL_DIR/gh-mix.tar.gz"

# アーカイブを展開
tar -xzf "$INSTALL_DIR/gh-mix.tar.gz" -C "$INSTALL_DIR"

# 実行権限を付与
chmod +x "$INSTALL_DIR/bin/gh-mix"

# インストール完了メッセージ
echo "gh-mix has been installed to $INSTALL_DIR"