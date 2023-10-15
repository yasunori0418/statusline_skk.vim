" lightline_skk.vim
" Author: yasunori0418
" License: MIT

if exists('g:loaded_lightline_skk')
  finish
endif
let g:loaded_lightline_skk = 1

function! s:announce() abort
  if !exists('g:lightline_skk_annouce')
    echohl WarningMsg
    echomsg 'lightline_skk.vimはlightline.vim前提のプラグインではなくなります。'
    echomsg '仕様変更に伴ない、プラグイン名はstatusline_skk.vimに変更予定です。'
    echomsg 'lightline.vimで使い続ける場合は、tagを"lightline"に変更してください。'
    echomsg '詳細に関しては、GitHubのプラグインページを確認してください。'
    echomsg 'https://github.com/yasunori0418/lightline_skk.vim'
    echohl None
  endif
endfunction

augroup lightline_skk
  autocmd!
  autocmd CursorHold * ++once call s:announce()
  autocmd User skkeleton-mode-changed redrawstatus
  autocmd User skkeleton-initialize-pre call lightline#init() | call lightline#update()
augroup END
