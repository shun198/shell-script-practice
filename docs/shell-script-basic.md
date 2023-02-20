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

```bash
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

```bash
# コメントを追記
```

## echo

標準出力

```bash
echo 'Hello'
```

## exit

```bash
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

```bash
WORD='script'
```

ただし、以下の変数名は NG

```bash
3WORD
A-WORD
E@mail
```

変数内の値を標準出力する際は `echo "$(変数名)"`とする

```bash
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

## if 文

if 文を書く際は

```bash
if [ 条件式 ]
then
    条件式に該当する処理
```

という風に記載します
[]と条件式の間に必ず半角スペースを入れないと実行されないので注意です

```bash
#!/bin/bash

# Display the UID and username of the user executing this script
# Display if the user is the root user or not

# Display UID
echo "Your UID is $UID"

# Display username
USERNAME=$(id -un)
# USERNAME=`id -un`でも同じ出力結果
echo "Your username is $USERNAME"

# Display if user is root or not
# 古い書き方
# 条件式を書くときは条件を[[]]内に書く
# -eq はequalの意味
# 0 はexit code0の時
# rootユーザのUIDは0
if [[ ${UID} -eq 0 ]]
then
    echo 'You are root'
else
    echo 'You are not root'
fi

# 条件式を書くときは[]でも[[]]と同じ
# =でも-eqと同じ意味になる
if [ ${UID} = 0 ]
then
    echo 'You are root'
else
    echo 'You are not root'
fi
```

ルート以外のユーザで下記の条件式を実行します

```
./luser-demo02.sh
```

以下のような実行結果になります

```
Your UID is 1000
Your username is vagrant
You are not root
```

ルートユーザで下記の条件式を実行します

```
sudo ./luser-demo02.sh
```

以下のような実行結果になります

```
Your UID is 0
Your username is root
You are root
```

### 数字の比較

| 比較演算子(shell) | 比較演算子(数式) | 説明                                  |
| ----------------- | ---------------- | ------------------------------------- |
| 数値 1 -eq 数値 2 | =                | 数値 1 と数値 2 が等しければ True     |
| 数値 1 -ne 数値 2 | !=、<>           | 数値 1 と数値 2 が等しくなければ True |
| 数値 1 -gt 数値 2 | >                | 数値 1 と数値 2 よりも大きければ True |
| 数値 1 -ge 数値 2 | >=               | 数値 1 が数値 2 以上であれば True     |
| 数値 1 -lt 数値 2 | <                | 数値 1 が数値 2 よりも小さければ True |
| 数値 1 -le 数値 2 | <=               | 数値 1 が数値 2 以下であれば True     |

### 文字列の比較

| 比較演算子(shell)    | 説明                                      |
| -------------------- | ----------------------------------------- |
| 文字列 1 = 文字列 2  | 文字列 1 と文字列 2 が等しければ True     |
| 文字列 1 != 文字列 2 | 文字列 1 と文字列 2 が等しくなければ True |
| -n 文字列            | 文字列の長さが 1 以上であれば True        |
| -z 文字列            | 文字列の長さが 0 であれば True            |

## exit code

シェルスクリプトを実行した際に exit code が返される
成功したら 0,失敗したら 1 の exit code が返される

## read

標準入力をする際に read を使います
