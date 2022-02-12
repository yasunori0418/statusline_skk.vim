" lightline-skk
" Author: yasunori-kirin0418
" License: MIT

" Skk mode to display by default.
let g:lightline_skk_mode = {
    \ 'hiragana': 'あぁ',
    \ 'katakana': 'アァ',
    \ 'hankaku-katakana': 'ｱｧ',
    \ 'zenkaku-alphabet': 'Ａａ',
    \ 'alphabet': 'Aa',
    \ }

function! g:lightline#skkeleton#_display() abort
    if skkeleton#mode() ==# 'hira'
        return g:lightline_skk_mode['hiragana']
    elseif skkeleton#mode() ==# 'kata'
        return g:lightline_skk_mode['katakana']
    elseif skkeleton#mode() ==# 'hankata'
        return g:lightline_skk_mode['hankaku-katakana']
    elseif skkeleton#mode() ==# 'zenkaku'
        return g:lightline_skk_mode['zenkaku-alphabet']
    else
        return g:lightline_skk_mode['alphabet']
    endif
endfunction

function! g:lightline#skkeleton#mode() abort

    if lightline#mode() ==# 'INSERT' || lightline#mode() ==# 'COMMAND'
        return g:lightline#skkeleton#_display()
    else
        return ''
    endif

endfunction
