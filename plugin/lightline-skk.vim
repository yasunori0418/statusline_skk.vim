" lightline-skk
" Author: yasunori-kirin0418
" License: MIT

if exists('g:loaded_lightline_skk')
    finish
endif
let g:loaded_lightline_skk = 1

augroup lightline_skk
    autocmd!
    autocmd User skkeleton-mode-changed redrawstatus
augroup END

" Skk mode to display by default.
let g:lightline_skk_mode = {
    \ 'hiragana': 'あぁ',
    \ 'katakana': 'アァ',
    \ 'hankaku-katakana': 'ｱｧ',
    \ 'zenkaku-alphabet': 'Ａａ',
    \ 'alphabet': 'Aa',
    \ }

call g:lightline#skkeleton#mode()
