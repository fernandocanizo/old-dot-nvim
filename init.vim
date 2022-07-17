" determine if neovim is running in vscode
if exists('g:vscode')
    " running as VSCode extension
else
    " normal neovim
    source $XDG_CONFIG_HOME/nvim/general.vimrc
    source $XDG_CONFIG_HOME/nvim/plugins.vimrc
    source $XDG_CONFIG_HOME/nvim/ctrlp.vimrc
    source $XDG_CONFIG_HOME/nvim/lightline.vimrc
    source $XDG_CONFIG_HOME/nvim/mappings.vimrc
endif
