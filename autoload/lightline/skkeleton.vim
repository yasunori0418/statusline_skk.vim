" lightline-skk
" Author: yasunori-kirin0418
" License: MIT

function! g:lightline#skkeleton#_display() abort
    if skkeleton#mode() ==# 'hira'
        return g:lightline_skk_display['hiragana']
    elseif skkeleton#mode() ==# 'kata'
        return g:lightline_skk_display['katakana']
    elseif skkeleton#mode() ==# 'hankata'
        return g:lightline_skk_display['hankaku-katakana']
    elseif skkeleton#mode() ==# 'zenkaku'
        return g:lightline_skk_display['zenkaku-alphabet']
    else
        return g:lightline_skk_display['alphabet']
    endif
endfunction

function! g:lightline#skkeleton#mode() abort

    if lightline#mode() ==# 'INSERT' && g:lightline_skk_enable_mode['INSERT']
        return g:lightline#skkeleton#_display()
    elseif lightline#mode() ==# 'COMMAND' && g:lightline_skk_enable_mode['COMMAND']
        return g:lightline#skkeleton#_display()
    elseif lightline#mode() ==# 'REPLACE' && g:lightline_skk_enable_mode['REPLACE']
        return g:lightline#skkeleton#_display()
    else
        return ''
    endif

endfunction
