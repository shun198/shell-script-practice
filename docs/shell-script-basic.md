## shell script とは

Linux を操作するためのプログラミング言語
bash, sh, csh, zsh といろんな種類があるが、
bash が一般的

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

ファイルの 1 行目に以下のように記載することで該当するシェルを指定する
今回は bash を指定する

```
#!/bin/bash
```

## exit

```
exit 0
```

をかくと処理が正常終了する

## パーミッション

ファイルに実行権限を与える必要がある

```
chmod 755
```
