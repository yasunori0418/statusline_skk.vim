" lightline-skk
" Author: yasunori-kirin0418
" License: MIT

if exists('g:loaded_lightline_skk')
    finish
endif
let g:loaded_lightline_skk = 1

function! g:lightline#skkeleton() abort
    return g:lightline#skkeleton#mode()
endfunction

function! g:lightline#eskk() abort
    return g:lightline#eskk#mode()
endfunction
