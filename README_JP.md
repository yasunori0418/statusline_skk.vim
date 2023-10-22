# statusline_skk.vim

このプラグインは、skkeletonの変換モードを表示するlightlineコンポーネントを追加します。

## 特徴

動作や機能については、下の動画をご覧下さい。

INSERT Mode
![INSERT](https://user-images.githubusercontent.com/74786563/153974503-7dd17e3a-db6f-4a6d-b3c3-739f56c9a864.gif)

COMMAND Mode
![COMMAND](https://user-images.githubusercontent.com/74786563/153974556-71b5ce42-ed04-4225-9734-ca7ae4ca0648.gif)

### 似たプロジェクト

Neovimを使用しているなら、次のプロジェクトもお勧めします。

[delphinus/skkeleton_indicator.nvim](https://github.com/delphinus/skkeleton_indicator.nvim)

## インストール

このプラグインを使用するには当然ですが、[skkeleton][1]必要です。
インストールには、お好きなプラグインマネージャを使用してください。
私はdein.vimを使っています。

```toml:lazy.toml
[[plugins]]
repo = 'yasunori0418/statusline_skk.vim'
on_source = 'skkeleton'
```

## 使い方

次にサンプルコードを書きました。

```vim:.vimrc
let g:lightline = {
  \ 'active': {
  \   'left': [ [ 'mode', 'paste', 'skk_mode' ],
  \             [ 'readonly', 'filename', 'modified' ] ]
  \   },
  \ 'component_function': {
  \   'skk_mode': 'statusline_skk#mode',
  \   },
  \ }
```

このプラグインをlightline.vimで使用する場合の`component_function`に`statusline_skk#mode`を登録します。
登録したコンポーネントを好きな場所に配置して使用してください。
ここでは左のコンポーネント集合に配置しました。

詳しいlightline.vimの設定は、lightline.vimのREADMEをご覧下さい。

## 設定

変換モードの見た目を変えるなら、次のようにします。

```vim:.vimrc
call statusline_skk#option('display', {
  \ 'hiragana': 'あぁ󰗧',
  \ 'katakana': 'アァ󰗧',
  \ 'hankaku-katakana': 'ｱｧ󰗧',
  \ 'zenkaku-alphabet': 'Ａａ󰗧',
  \ 'alphabet': 'Aa󰗧',
  \ })
```

このカーソルのような見た目の物は、NerdFont入りのフォントなら使うことができます。

---

変換モードが表示されるVimのモードは、次のとおりです。

- Insert
- Command

現在、これらのモードでskkeletonを使用すると、変換モードが表示されるようになっています。
一部モードで、skkeletonの変換モードを表示して欲しくないときがあるかもしれません。
次の設定は、そういうときに有効です。

```vim:.vimrc
call statusline_skk#option('enable_mode', {
  \ 'COMMAND': v:false,
  \ })
```

上記の設定では、コマンドモードのときに変換モードが表示されなくなります。

## ライセンス

MIT

## 謝辞

skkeletonの作者に感謝を申し上げます。

<!-- Links -->
[1]: https://github.com/vim-skk/skkeleton
