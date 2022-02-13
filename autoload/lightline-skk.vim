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


