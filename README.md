# gh-sasaya

このプロジェクトは gh コマンドの拡張として Rust で作成されています。

## 環境構築

- [Rust のインストール](https://www.rust-lang.org/tools/install)  
  Rust ツールチェーンをインストールしてください。通常は `rustup` を利用します。
- 必要に応じて、Cargo の最新版がインストールされているか確認してください。

## gh-sasaya のビルド方法

1. プロジェクトルートディレクトリに移動します。

   ```bash
   cd gh-sasaya
   ```

2. リリースビルドを実行します。

   ```bash
   cargo build --release
   ```

3. ビルド後のバイナリは `target/release/gh-sasaya` に生成されます。

以上をリポジトリに反映し、`gh` 拡張として利用してください。

## gh コマンドのインストール方法

gh 拡張機能を利用するため、gh コマンドが必要です。 gh コマンドが存在しない場合は、以下のいずれかの方法でインストールしてください:

### Snap を利用する場合:
```bash
sudo snap install gh
```

### apt を利用する場合:
```bash
sudo apt install gh
```
