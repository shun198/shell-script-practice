## shell script とは

Linux を操作するためのプログラミング言語<br>
bash, sh, csh, zsh といろんな種類がありますが bash が一般的

## サポートしてるシェルを一覧表示

```
cat /etc/shells
/bin/bash
/bin/csh
/bin/dash
/bin/ksh
/bin/sh
/bin/tcsh
/bin/zsh
```

## Shebang

ファイルの 1 行目に以下のように記載することで該当するシェルを指定します

```
#!
```

bash のパスである`/bin/bash`を指定すると以下のようになります

```shell
#!/bin/bash
```

### 語源

```
# = Sharp
! = Bang(スラング)
#! = Shebang
```

## コメント

コメントを書く際は`#`を使用します

```shell
# コメントを追記
```

## echo

標準出力

```
echo 'Hello'
```

## exit

```
exit 0
```

をかくと処理が正常終了する

## パーミッション

ls -l コマンドを使うと以下のように

```
-rw-r--r--
```

といった文字列が表示されますがこちらがパーミッションです

```
[vagrant@localhost vagrant]$ ls -la
-rw-r--r--   1 vagrant vagrant_group   42  2月 16 07:34 luser-demo01.sh
```

### 構成

| 項目          | 説明                                                                                       |
| ------------- | ------------------------------------------------------------------------------------------ |
| -             | ファイルのタイプ。-がファイル、d がディレクトリ                                            |
| rw-           | ファイルを所有しているユーザ(vagrant)のアクセス権限                                        |
| r--           | ファイルにアクセスできるグループ(vagrant_group)のアクセス権限                              |
| r--           | それ以外のユーザのアクセス権限                                                             |
| 1             | ファイルの場合はハードリンクの数でディレクトリの場合はディレクトリ内のサブディレクトリの数 |
| vagrant       | ユーザ名                                                                                   |
| vagrant_group | グループ名                                                                                 |
| 42            | ファイルサイズ                                                                             |

### フラグ

| フラグ | 意味         | 対応する数字 |
| ------ | ------------ | ------------ |
| r      | 読み書き専用 | 4            |
| w      | 書き込み専用 | 2            |
| x      | 実行可能     | 1            |
| -      | 指定なし     | 0            |

### chmod

ファイルを実行する際はファイルに実行権限を与える必要があリます

```
chmod 755
```

```
[vagrant@localhost vagrant]$ ls -la
-rwxr-xr-x 1 vagrant vagrant_group   42  2月 16 07:34 luser-demo01.sh
```

## シェルスクリプトの実行

カレントディレクトリ内のシェルスクリプトを指定します

```
./luser-demo01.sh
```

## 変数

型を定義せずに変数を定義できます
変数名は全て大文字が推奨されています

```
WORD='script'
```

ただし、以下の変数名は NG

```
3WORD
A-WORD
E@mail
```

変数内の値を標準出力する際は `echo "$(変数名)"`とする

```
WORD='script'

# ダブルクォートで指定
echo "$WORD" # script

# シングルクォートだと変数の値ではなく、変数名が出力される
echo '$WORD' # $WORD

echo "This is a shell $WORD" # This is a shell script

# 変数の上書きも可能
WORD='shell'

echo "$WORD"
```
