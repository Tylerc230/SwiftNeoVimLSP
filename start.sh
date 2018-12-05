#!/bin/sh
SOURCEKIT_LOGGING="3"
SOURCEKIT_TOOLCHAIN_PATH=/Library/Developer/Toolchains/swift-DEVELOPMENT-SNAPSHOT-2018-11-25-a.xctoolchain
nvim --cmd 'let &rtp = substitute(&rtp, $HOME."/\.vim", "./vim", "g")' -u ~/Desktop/vim_lsp/vimrc $1
