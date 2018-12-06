#!/bin/sh
SOURCEKIT_LOGGING="3"
SOURCEKIT_TOOLCHAIN_PATH=/Library/Developer/Toolchains/swift-DEVELOPMENT-SNAPSHOT-2018-12-04-a.xctoolchain
cd MySwiftPackage
nvim --cmd 'let &rtp = substitute(&rtp, $HOME."/\.vim", "./vim", "g")' -u ~/Desktop/vim_lsp/vimrc Sources/MySwiftPackage/main.swift
