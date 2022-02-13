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
    autocmd User skkeleton-initialize-pre call lightline#init() | call lightline#update()
augroup END
