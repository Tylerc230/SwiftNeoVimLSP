if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
let install_dir = expand("<sfile>:p:h")
let dein_path = install_dir . "/vim/bundle/repos/github.com/Shougo/dein.vim"
let &runtimepath.=','.escape(dein_path, '\,')
let dein_cache_path = install_dir . "/cache/dein"

if dein#load_state(dein_cache_path)
  call dein#begin(dein_cache_path)

  call dein#add(dein_cache_path . '/repos/github.com/Shougo/dein.vim')
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
let g:LanguageClient_serverCommands = { 'python': ['/usr/local/bin/pyls'], 'swift': [install_dir . '/sourcekit-lsp/.build/debug/sourcekit-lsp'] }
let g:LanguageClient_rootMarkers = {
      \ 'swift': ['Package.swift'],
      \ }
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>

filetype plugin indent on
syntax enable
