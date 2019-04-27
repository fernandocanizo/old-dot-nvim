" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('$XDG_CONFIG_HOME/nvim/plugged-in')

" Make sure you use single quotes when using Plug command

" Conquer of Completion nightly build
Plug 'neoclide/coc.nvim', {'do': './install.sh nightly'}


" Initialize plugin system
call plug#end()
