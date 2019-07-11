" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('$XDG_CONFIG_HOME/nvim/plugged-in')

" Make sure you use single quotes when using Plug command

" Conquer of Completion nightly build
Plug 'neoclide/coc.nvim', {'do': './install.sh nightly'}

" Find files quickly
Plug 'https://github.com/ctrlpvim/ctrlp.vim'

" Navigate files
Plug 'https://github.com/scrooloose/nerdtree'
map <Leader>t :NERDTreeToggle<enter>

" Show difference on files already in git repo
Plug 'https://github.com/airblade/vim-gitgutter'

" Initialize plugin system
call plug#end()
