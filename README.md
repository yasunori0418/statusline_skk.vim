# lightline_skk.vim

This plugin adds a lightline-component that displays the conversion mode of skkeleton.


## Feature

Please see the video below for the operation and functions.

INSERT Mode
![INSERT](https://user-images.githubusercontent.com/74786563/153974503-7dd17e3a-db6f-4a6d-b3c3-739f56c9a864.gif)

COMMAND Mode
![COMMAND](https://user-images.githubusercontent.com/74786563/153974556-71b5ce42-ed04-4225-9734-ca7ae4ca0648.gif)

REPLACE Mode
![REPLACE](https://user-images.githubusercontent.com/74786563/153974565-d276a074-9462-4170-a334-bcfc533db5b1.gif)


## Install

Obviously you need lightline.vim and skkeleton to use this plugin.
Use your favorite plugin manager for installation.
I'm using dein.vim.

```toml:lazy.toml
[[plugins]]
repo = 'yasunori-kirin0418/lightline_skk.vim'
on_source = 'skkeleton'
```


## Usage

I wrote the sample code below.

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

To use this plugin, register `g: lightline_skk # mode` in` component_function` of lightline.vim.
Place the registered component anywhere you like and use it. 
Here, it is placed in the component set on the left.

See the lightline.vim README for detailed lightline.vim settings.


## Configuration

To change the appearance of the conversion mode, do the following.

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


Anything that looks like this cursor can be used with fonts that contain NerdFont.

---

The Vim mode in which the conversion mode is displayed is…

- Insert
- Command
- Replace

Currently, using skkeleton in these modes will show the conversion mode.
You may not want to see the conversion mode of skkeleton in some modes.
The following settings are effective in such cases.

```vim:.vimrc
call lightline_skk#option('enable_mode', {
    \ 'INSERT': v:true,
    \ 'COMMAND': v:false,
    \ 'REPLACE': v:true,
    \ })
```

<!-- ここにも良い感じの動画をセット…… -->

With the above settings, the conversion mode will not be displayed when in command mode.
