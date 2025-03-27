# gh-mix

gh extension のプログラミングの多言語対応、ＯＳのマルチプラットフォームの検証実験です。

言語は、c、cpp、rust を使います。

ビルドシステムは、CMakeを使っています。


## フォルダレイアウトルール

フォルダレイアウトルールは、以下のルールで作ると、とても保守性が高くなります。

- 最上位のCMakeLists.txt
   - つなぎ役のCMakeLists.txt。ここには、add_subdirectory()しかありません。
      - ターゲットのCMakeLists.txt
- CMakeのターゲットと、実行ファイル名と、フォルダは、一致させています。
- 最上位に、ソースは置きません。
- 第２階層は、分類するためのフォルダで分けています。
- 第３階層は、ターゲットのフォルダです。

## 環境構築

- cmake
- gcc
- rust



## Install

```
gh extension install kouji-sasaya/gh-mix
```

## Update

```
gh extension upgrade mix
```

## Uninstall

```
gh extension remove mix
```

## gh-mix のビルド方法


1. プロジェクトルートディレクトリに移動します。

   ```bash
   cd gh-mix
   ```

2. ビルドを実行します。

  cmake で、build ディレクトリを作成（cmakeに任せます）して、make します。

  タグを打った時に、パッケージに、バージョン付与するため、バージョンを指定します。　省略時は、1.0.0です。


   ```bash
   cmake -S . -B build -DVERSION=1.0.0
   cmake ..
   make all
   make package
   ```

3. ビルド後のバイナリは `build` 配下に、生成されます。

以上をリポジトリに反映し、`gh` 拡張として利用してください。

## gh コマンドのインストール方法

gh 拡張機能を利用するため、gh コマンドが必要です。 gh コマンドが存在しない場合は、以下のいずれかの方法でインストールしてください:

### apt を利用する場合:
```bash
sudo apt install gh
```


# License
Distributed under the MIT License.

