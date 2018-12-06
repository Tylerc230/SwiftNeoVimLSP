https://github.com/Shougo/dein.vim
https://github.com/Shougo/deoplete.nvim
https://github.com/autozimu/LanguageClient-neovim
https://github.com/apple/sourcekit-lsp
todo:
fix absolute paths

Mention project marker

steps:
init:
git submodule update --init
swift build sourcekit-lsp
swift build (out project)

Things to try:
completion
:call LanguageClient_contextMenu()
:call LanguageClient#textDocument_definition()
:call LanguageClient#textDocument_hover()<CR> //on method/class with documentation

