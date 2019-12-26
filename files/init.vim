"=============================================================================
" init.vim --- Entry file for neovim
" Copyright (c) 2016-2019 Wang Shidong & Contributors
" Author: Wang Shidong < wsdjeg at 163.com >
" URL: https://spacevim.org
" License: GPLv3
"=============================================================================

execute 'source' fnamemodify(expand('<sfile>'), ':h').'/config/main.vim'
  if has('python3')
    let g:spacevim_autocomplete_method = 'deoplete'
  elseif has('lua')
    let g:spacevim_autocomplete_method = 'neocomplete'
  elseif has('python')
    let g:spacevim_autocomplete_method = 'completor'
  elseif has('timers')
    let g:spacevim_autocomplete_method = 'asyncomplete'
  else
    let g:spacevim_autocomplete_method = 'neocomplcache'
  endif

