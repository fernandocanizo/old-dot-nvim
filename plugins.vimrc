" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('$XDG_CONFIG_HOME/nvim/plugged-in')

" Make sure you use single quotes when using Plug command

" Conquer of Completion nightly build
Plug 'https://github.com/neoclide/coc.nvim', {'do': './install.sh nightly'}


" Find files quickly
Plug 'https://github.com/ctrlpvim/ctrlp.vim'

" Navigate files
Plug 'https://github.com/scrooloose/nerdtree'
map <Leader>t :NERDTreeToggle<enter>

" Show difference on files already in git repo
Plug 'https://github.com/airblade/vim-gitgutter'

" Run programs asynchronous (for linting)
Plug 'https://github.com/neomake/neomake'

" Themes
Plug 'https://github.com/tomasr/molokai'
Plug 'https://github.com/tpope/vim-vividchalk'
Plug 'https://github.com/bluz71/vim-moonfly-colors'
Plug 'https://github.com/rakr/vim-one'
Plug 'https://github.com/akmassey/vim-codeschool'
Plug 'https://github.com/altercation/vim-colors-solarized'
Plug 'https://github.com/marcopaganini/termschool-vim-theme'

" Preview colors in source code while editing
Plug 'https://github.com/ap/vim-css-color'

" A light and configurable statusline/tabline
" better than:
" - vim-powerline
" - powerline
" - vim-airline
Plug 'https://github.com/itchyny/lightline.vim'

" Manage git from vim
Plug 'https://github.com/tpope/vim-fugitive'

" Add guiding lines
" Plug 'https://github.com/thaerkh/vim-indentguides'
" Disabling plugin because it overwrites conceallevel making JSON editing
" cumbersome (it hides the quotes)
" See https://github.com/thaerkh/vim-indentguides/issues/17

" Initialize plugin system
call plug#end()

" Full config: when writing or reading a buffer, and on changes in insert
" and normal mode (after 1s; no delay when writing).
call neomake#configure#automake('nrwi', 500)

" Open Neomake list automatically
" TODO not working, have to open it by hand
let g:neomake_open_list = 2

" if eslintrc file present use Eslint, else use Prettier
if findfile('.eslintrc', '.;') !=# ''
  let g:neomake_javascript_enabled_makers = ['eslint']
  let g:neomake_jsx_enabled_makers = ['eslint']
  " load local eslint in the project root to avoid global plugin installations
  let s:eslint_path = system('PATH=$(npm bin):$PATH && which eslint')
  let g:neomake_javascript_eslint_exe = substitute(s:eslint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
else
  let g:neomake_javascript_enabled_makers = ['prettier']
  let g:neomake_jsx_enabled_makers = ['prettier']
endif

let g:ctrlp_custom_ignore = '\v([\/]\.(git)|node_modules|android)$'

" 2019.11.08 a probar:
" Plug 'https://github.com/zxqfl/tabnine-vim'

let g:coc_node_path = '/home/flc/.config/nvm/versions/node/v16.0.0/bin/node'

" https://github.com/kiteco/vim-plugin configuration
" this plugin was installed by Kite and will be automatically updated by
" Kite when necessary, so we only manage its configuration here

" Kite only supports Python and Javascript so far on vim/neovim
let g:kite_supported_languages = ['python', 'javascript']

" Use TAB key to insert the completion instead of <C-y>
let g:kite_tab_complete=1

set completeopt+=menuone
