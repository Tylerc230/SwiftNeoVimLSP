#!/bin/sh
git submodule update --init
pushd sourcekit-lsp
swift build
popd
pushd MySwiftPackage
swift build
popd
nvim +UpdateRemotePlugins +qa
