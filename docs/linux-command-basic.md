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
