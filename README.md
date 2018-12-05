https://github.com/apple/sourcekit-lsp
https://github.com/autozimu/LanguageClient-neovim
todo:
make 'init.sh'
and 'tryit.sh'
fix absolute paths
make submodule

Mention project marker

steps:
git submodule update --init
swift build sourcekit-lsp
swift build (out project)

Things to try:
completion
:call LanguageClient_contextMenu()
:call LanguageClient#textDocument_definition()
:call LanguageClient#textDocument_hover()<CR> //on method/class with documentation

