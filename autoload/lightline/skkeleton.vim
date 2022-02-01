" lightline-skk
" Author: yasunori-kirin0418
" License: MIT

function! g:lightline#skkeleton#mode() abort

    if exists('g:loaded_skkeleton') == 0
        return ''
    endif

    if lightline#mode() ==# 'INSERT' || lightline#mode() ==# 'COMMAND'
        if skkeleton#mode() ==# 'hira'
            return 'あぁ﫦'
        elseif skkeleton#mode() ==# 'kata'
            return 'アァ﫦'
        elseif skkeleton#mode() ==# 'hankata'
            return 'ｱｧ﫦'
        elseif skkeleton#mode() ==# 'zenkaku'
            return 'Ａａ﫦'
        else
            return 'Aa﫦'
        endif
    else
        return ''
    endif

endfunction
