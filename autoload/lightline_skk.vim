" lightline-skk
" Author: yasunori-kirin0418
" License: MIT

" Skk mode to display by default.
let g:lightline_skk_display = {
  \ 'hiragana': 'あぁ',
  \ 'katakana': 'アァ',
  \ 'hankaku_katakana': 'ｱｧ',
  \ 'zenkaku_alphabet': 'Ａａ',
  \ 'alphabet': 'Aa',
  \ 'abbrev': 'abbrev',
  \ }

" Options for displaying SKK input modes.
let g:lightline_skk_enable_mode = {
  \ 'INSERT': v:true,
  \ 'COMMAND': v:true,
  \ 'REPLACE': v:true,
  \ }

" Function for changing options.
" name == 'display' || 'enable_mode'
function! g:lightline_skk#option(name, dict) abort
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
    return g:lightline_skk_display['hankaku_katakana']
  elseif skkeleton#mode() ==# 'zenkaku'
    return g:lightline_skk_display['zenkaku_alphabet']
  elseif skkeleton#mode() ==# 'abbrev'
    return g:lightline_skk_display['abbrev']
  else
    return g:lightline_skk_display['alphabet']
  endif
endfunction

function! g:lightline_skk#mode() abort
  if exists('g:loaded_skkeleton') == 0
    return ''
  endif
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
