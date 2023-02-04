# コマンド一覧

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

## mkdir

ディレクトリを作成します

```
bash-5.2# mkdir dir1
bash-5.2# ls | grep dir1
dir1
```
