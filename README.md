# 科目「機械学習発展」

## Jupyter Bookの使い方
### インストール
```
pip install jupyter-book
```

### 作業方法
基本的に作成するファイルは`md`ファイルか`ipynb`ファイルのいずれか．
後者の場合，Jupyter Notebookで作成すればよい．
どちらのファイルも作成後，以下の`build`コマンドで最終ファイルを生成できる．

### コマンド
#### プロジェクト生成
```
jb create lecture_hogehoge
```

#### ビルド
対象プロジェクトのディレクトリに移動して`jb build`コマンドを実行．

```
$ cd lecture_hogehoge
$ jb build --all .
```

`jb build .`のように`--all`オプションを入れない場合，変更・追加したページしか更新されない．目次を含めてビルドしたい場合は，更新していないページから追加したページへのリンクも更新する必要がある．そのため，`--all`オプションを入れてJupyter Book全体を再構成するようにする．

### GitHub Pagesの作成
```
$ ghp-import -n -p -f _build/html --cname=dbnote.hontolab.org
```

### MyST Markdown
使用頻度の高いのは[Directives](https://qiita.com/magolors/items/620860558661b527f267)（コンテンツブロック作成機能）．


### ページ内リンク

あるセクションにページ内リンクで飛べるようにするには，以下のようにアンカー用ラベルを張る．
`anchor-label`のところにアンカー用ラベルを記す．

```

(anchor-label)=
# セクション名
xxxxx

```

いったんアンカーを張れば，`[アンカーテキスト名](#anchor-label)`でリンクを作れる．
なお`(#anchor-label)`の箇所は，どんなに対象セクションが深くても`#`の数は1つにすること．

