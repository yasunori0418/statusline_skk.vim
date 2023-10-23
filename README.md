# statusline_skk.vim

This plugin adds a lightline-component that displays the conversion mode of skkeleton.

> [!WARNING]
> The name of this plugin will be changed to `statusline_skk.vim` in November.
> Due to the name change, it is no longer a plugin that requires lightline.vim.
> Since there are breaking changes such as function names, it is recommended to fix it to the `lightline` tag.
> Also, in the latest state, an announcement message will be displayed to guide you to the repository.
> If you want to turn off announcement messages, add the following code to `.vimrc` etc.

```vim
let g:lightline_skk_announce = v:true
```

## Feature

Please see the video below for the operation and functions.

INSERT Mode
![INSERT](https://user-images.githubusercontent.com/74786563/153974503-7dd17e3a-db6f-4a6d-b3c3-739f56c9a864.gif)

COMMAND Mode
![COMMAND](https://user-images.githubusercontent.com/74786563/153974556-71b5ce42-ed04-4225-9734-ca7ae4ca0648.gif)

### Similar projects

If you are using Neovim, we also recommend the following projects:

https://github.com/delphinus/skkeleton_indicator.nvim

## Install

Obviously you need [skkeleton][1] to use this plugin.
Use your favorite plugin manager for installation.
I'm using dein.vim.

```toml:lazy.toml
[[plugins]]
repo = 'yasunori0418/statusline_skk.vim'
on_source = 'skkeleton'
```

## Usage

Next, I wrote a sample code.

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

Register `statusline_skk#mode` in `component_function` when using this plugin with lightline.vim.
Place the registered component anywhere you like and use it.
Here, it is placed in the component set on the left.

See the lightline.vim README for detailed lightline.vim settings.

## Configuration

To change the appearance of the conversion mode, do the following.

```vim:.vimrc
call statusline_skk#option('display', {
  \ 'hiragana': 'あぁ󰗧',
  \ 'katakana': 'アァ󰗧',
  \ 'hankaku-katakana': 'ｱｧ󰗧',
  \ 'zenkaku-alphabet': 'Ａａ󰗧',
  \ 'alphabet': 'Aa󰗧',
  \ })
```

Anything that looks like this cursor can be used with fonts that contain NerdFont.

---

The Vim mode in which the conversion mode is displayed is…

- Insert
- Command

Currently, using skkeleton in these modes will show the conversion mode.
You may not want to see the conversion mode of skkeleton in some modes.
The following settings are effective in such cases.

```vim:.vimrc
call statusline_skk#option('enable_mode', {
    \ 'INSERT': v:true,
    \ 'COMMAND': v:false,
    \ })
```

With the above settings, the conversion mode will not be displayed when in command mode.

## License

MIT

## Acknowledgments

Thanks to the authors of skkeleton.

<!-- Links -->
[1]: https://github.com/vim-skk/skkeleton
