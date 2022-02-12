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

function! g:lightline#skkeleton#mode() abort

    if exists('g:loaded_skkeleton') == 0
        return ''
    endif

    if lightline#mode() ==# 'INSERT' || lightline#mode() ==# 'COMMAND'
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
    else
        return ''
    endif

endfunction
