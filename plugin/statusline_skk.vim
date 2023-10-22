" statusline_skk.vim
" Author: yasunori0418
" License: MIT

if exists('g:loaded_statusline_skk')
  finish
endif
let g:loaded_statusline_skk = 1

augroup statusline_skk
  autocmd!
  autocmd User skkeleton-mode-changed redrawstatus
augroup END
