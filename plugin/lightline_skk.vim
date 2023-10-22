" lightline_skk.vim
" Author: yasunori0418
" License: MIT

if exists('g:loaded_lightline_skk')
  finish
endif
let g:loaded_lightline_skk = 1

function! s:announce() abort
  if !exists('g:lightline_skk_announce')
    echohl WarningMsg
    echomsg '[lightline_skk.vim] 仕様変更のお知らせ: https://github.com/yasunori0418/lightline_skk.vim'
    echohl None
  endif
endfunction

augroup lightline_skk
  autocmd!
  autocmd CursorHold * ++once call s:announce()
  autocmd User skkeleton-mode-changed redrawstatus
augroup END
