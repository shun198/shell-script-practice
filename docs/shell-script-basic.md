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

```
#!/bin/bash
```

### 語源

```
# = Sharp
! = Bang(スラング)
#! = Shebang
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
