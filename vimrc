if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/Desktop/vim_lsp/vim/bundle/repos/github.com/Shougo/dein.vim

if dein#load_state('~/Desktop/vim_lsp/cache/dein')
  call dein#begin('~/Desktop/vim_lsp/cache/dein')

  call dein#add('~/Desktop/vim_lsp/cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('autozimu/LanguageClient-neovim', {
        \ 'rev': 'next',
        \ 'build': 'bash install.sh',
        \ })

  call dein#end()
  call dein#save_state()
endif
call dein#install()
autocmd BufNewFile,BufRead *.swift set filetype=swift
let g:deoplete#enable_at_startup = 1
let g:LanguageClient_serverCommands = { 'python': ['/usr/local/bin/pyls'], 'swift': ['~/Desktop/vim_lsp/sourcekit-lsp/.build/debug/sourcekit-lsp'] }
let g:LanguageClient_rootMarkers = {
      \ 'swift': ['Package.swift'],
      \ }
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>

filetype plugin indent on
syntax enable
