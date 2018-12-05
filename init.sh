#!/bin/sh
git submodule update --init
pushd sourcekit-lsp
swift build
popd
pushd my_swift
swift build
popd
nvim +UpdateRemotePlugins +qa
