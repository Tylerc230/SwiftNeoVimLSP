#!/bin/sh
SOURCEKIT_LOGGING="3"
SOURCEKIT_TOOLCHAIN_PATH=/Library/Developer/Toolchains/swift-DEVELOPMENT-SNAPSHOT-2018-11-25-a.xctoolchain
cd my_swift
nvim --cmd 'let &rtp = substitute(&rtp, $HOME."/\.vim", "./vim", "g")' -u ~/Desktop/vim_lsp/vimrc Sources/my_swift/main.swift
