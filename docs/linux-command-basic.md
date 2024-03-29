# コマンド一覧 🐧

## echo

文字列を表示させることができます

```
bash-5.2# echo A
A
```

環境変数を表示させる場合は`$`をつけます

```
bash-5.2# echo $HOME
/root
```

## ls

ファイルの一覧を表示することができる

```
bash-5.2# ls
bin dev etc home lib media mnt opt proc root run sbin srv sys tmp usr var
```

### オプション

| オプション | 説明                         |
| ---------- | ---------------------------- |
| ls -l      | 詳細表示                     |
| ls -a      | 隠しファイルも表示           |
| ls -la     | 隠しファイルも含めて詳細表示 |
| ls -ltr    | 作成時刻で昇順に詳細表示     |

## pwd

現在のディレクトリを表示します

```
bash-5.2# pwd
/
```

## cd

ディレクトリの位置を変更します

```
bash-5.2# cd bin
bash-5.2# pwd
/bin
```

### オプション

| オプション          | 説明                       |
| ------------------- | -------------------------- |
| cd ../              | 一つ上のディレクトリへ移動 |
| cd <ディレクトリ名> | 特定のディレクトリへ移動   |

## touch

空ファイルを作成

```
bash-5.2# touch file1
bash-5.2# ls | grep file1
file1
```

## mkdir

ディレクトリを作成します

```
bash-5.2# mkdir dir1
bash-5.2# ls | grep dir1
dir1
```

## vi

ファイルを作成して編集する

```
bash-5.2# vi file1
bash-5.2# ls | grep file1
file1
```

## cat

ファイルの内容を表示させる

```
bash-5.2# cat file1
aaa
bbb
```

## rm

ファイル(ディレクトリ)を削除

```
bash-5.2# ls | grep file.txt
file.txt
bash-5.2# rm file.txt
bash-5.2# ls | grep file.txt
bash-5.2#
```

### オプション

| オプション              | 説明                       |
| ----------------------- | -------------------------- |
| rm -f <ファイル名>      | ファイルを強制的に削除     |
| rm -r <ディレクトリ名>  | ディレクトリを削除         |
| rm -rf <ディレクトリ名> | ディレクトリを強制的に削除 |

## rmdir

空のディレクトリを削除

```
bash-5.2# ls | grep dir1
dir1
bash-5.2# rmdir dir1
bash-5.2# ls | grep dir1
bash-5.2#
```

## mv

ファイルの移動、ファイル名の変更

### ファイルの移動

```
bash-5.2# ls | grep file.txt
file.txt
bash-5.2# mv file.txt var
bash-5.2# ls var | grep file.txt
file.txt
```

### ファイル名の変更

```
bash-5.2# mv file.txt file2.txt
bash-5.2# ls | grep file
file2.txt
```

## ディレクトリ

```
./ # カレントディレクトリ
../ # 一つ上のディレクトリ
```

## UID

ユーザの ID
通常のユーザは 1000 で root ユーザは 0

```
echo $UID # 1000
```

## su

ユーザの変更の際に使用します
変更の際はパスワードを要求されます

```
su vagrant
Password:
```

sudo で su を行う際は`-`をつけるとパスワードなしで変更できる

```
sudo su - shun198
```
