https://github.com/apple/sourcekit-lsp
https://github.com/autozimu/LanguageClient-neovim
todo:
make 'init.sh'
and 'tryit.sh'

steps:
git submodule update --init
swift build sourcekit-lsp
swift build (out project)

Things to try:
:call LanguageClient#textDocument_definition()

