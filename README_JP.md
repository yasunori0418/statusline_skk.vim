# lightline_skk.vim

このプラグインは、skkeletonの変換モードを表示するlightlineコンポーネントを追加します。


## 特徴

動作や機能については、下の動画をご覧下さい。

INSERT Mode
<!-- この辺にlightline_skk.vimが動いている良い感じの動画を…… -->
![INSERT](https://user-images.githubusercontent.com/74786563/153974503-7dd17e3a-db6f-4a6d-b3c3-739f56c9a864.gif)

COMMAND Mode
![COMMAND](https://user-images.githubusercontent.com/74786563/153974556-71b5ce42-ed04-4225-9734-ca7ae4ca0648.gif)

REPLACE Mode
![REPLACE](https://user-images.githubusercontent.com/74786563/153974565-d276a074-9462-4170-a334-bcfc533db5b1.gif)


## インストール

このプラグインを使用するには当然ですが、lightline.vimとskkeleton必要です。
インストールには、お好きなプラグインマネージャを使用してください。
私はdein.vimを使っています。

```toml:lazy.toml
[[plugins]]
repo = 'yasunori-kirin0418/lightline_skk.vim'
on_source = 'skkeleton'
```


## 使い方

以下にサンプルコードを書きました。

```vim:.vimrc
let g:lightline = {
    \ 'active': {
    \   'left': [ [ 'mode', 'paste', 'skk_mode' ],
    \             [ 'readonly', 'filename', 'modifide' ] ]
    \   },
    \ 'component_function': {
    \   'skk_mode': 'g:lightline_skk#mode',
    \   },
    \ }
```

このプラグインを使用するには、lightline.vimの`component_function`に`g:lightline_skk#mode`を登録します。
登録したコンポーネントを好きな場所に配置して使用してください。
ここでは左のコンポーネント集合に配置しました。

詳しいlightline.vimの設定は、lightline.vimのREADMEをご覧下さい。


## 設定

変換モードの見た目を変えるなら、以下の様にします。

```vim:.vimrc
call lightline_skk#option('display', {
    \ 'hiragana': 'あぁ﫦',
    \ 'katakana': 'アァ﫦',
    \ 'hankaku-katakana': 'ｱｧ﫦',
    \ 'zenkaku-alphabet': 'Ａａ﫦',
    \ 'alphabet': 'Aa﫦',
    \ })
```

<!-- ここにも良い感じの動画をセット…… -->


このカーソルの様な見た目の物は、NerdFont入りのフォントなら使うことができます。

---

変換モードが表示されるVimのモードは、

- Insert
- Command
- Replace

現在、これらのモードでskkeletonを使用すると、変換モードが表示されるようになっています。
一部モードで、skkeletonの変換モードを表示して欲しくないときがあるかもしれません。
以下の設定は、そういうときに有効です。

```vim:.vimrc
call lightline_skk#option('enable_mode', {
    \ 'COMMAND': v:false,
    \ })
```

<!-- ここにも良い感じの動画をセット…… -->

上記の設定では、コマンドモードのときに変換モードが表示されなくなります。
