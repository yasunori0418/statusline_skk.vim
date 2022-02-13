" lightline-skk
" Author: yasunori-kirin0418
" License: MIT

" Function for changing options.
" name == 'display' || 'enable_mode'
function! g:lightline-skk#option(name, dict) abort

    if a:name ==# 'display'
        for l:key in keys(a:dict)
            let g:lightline_skk_display[key] = a:dict[key]
        endfor

    elseif a:name ==# 'enable_mode'
        for l:key in keys(a:dict)
            let g:lightline_skk_enable_mode[key] = a:dict[key]
        endfor
    endif

endfunction

function! g:lightline_skk#_display() abort
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

function! g:lightline_skk#mode() abort

    if lightline#mode() ==# 'INSERT' && g:lightline_skk_enable_mode['INSERT']
        return g:lightline_skk#_display()
    elseif lightline#mode() ==# 'COMMAND' && g:lightline_skk_enable_mode['COMMAND']
        return g:lightline_skk#_display()
    elseif lightline#mode() ==# 'REPLACE' && g:lightline_skk_enable_mode['REPLACE']
        return g:lightline_skk#_display()
    else
        return ''
    endif

endfunction
