This repo demostrates how to use Neovim with the new Swift LSP server. The full write up can be found here: https://www.sfsoftwareist.com/2018/12/05/swift-lsp-and-vim/

To use the repository, there are 3 steps:

1. Clone my repo, cd into it and ./init.sh. This will fetch the sourcekit-lsp submodule, build it and build the demo Swift package found at MySwiftPackage. It will also update neovim with the Dein, Deoplete and LCN plugins.
2. Download and install the Swift toolchain recommended on the sourcekit-lsp website(12-4-2018 at the time of this writing). Make sure SOURCEKIT_TOOLCHAIN_PATH in tryit.sh points to the newly installed xctoochain file.
3. Run tryit.sh which will set some environment variables and launch Neovim into the main.swift file. At this point you are ready to start experimenting!
4. In Neovim, run :UpdateRemotePlugins
