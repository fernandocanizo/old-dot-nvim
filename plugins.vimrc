" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('$XDG_CONFIG_HOME/nvim/plugged-in')

" Make sure you use single quotes when using Plug command
" Also, put the full URL to project, (easier to check it on the browser)

" LSP
Plug 'https://github.com/neovim/nvim-lspconfig'

" Completion: main one
"Plug 'https://github.com/ms-jpq/coq_nvim', {'branch': 'coq'}
" Completion: 9000+ Snippets
"Plug 'https://github.com/ms-jpq/coq.artifacts', {'branch': 'artifacts'}

" Files: find files quickly
Plug 'https://github.com/ctrlpvim/ctrlp.vim'

" Files: navigator
Plug 'https://github.com/ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}

" Linting: Run programs asynchronous
"Plug 'https://github.com/neomake/neomake'

" Themes
Plug 'https://github.com/tomasr/molokai'
"Plug 'https://github.com/tpope/vim-vividchalk'
"Plug 'https://github.com/bluz71/vim-moonfly-colors'
"Plug 'https://github.com/rakr/vim-one'
"Plug 'https://github.com/akmassey/vim-codeschool'
"Plug 'https://github.com/altercation/vim-colors-solarized'
"Plug 'https://github.com/marcopaganini/termschool-vim-theme'

" A light and configurable statusline/tabline
" better than:
" - vim-powerline
" - powerline
" - vim-airline
Plug 'https://github.com/itchyny/lightline.vim'

" Show difference on files already in git repo
Plug 'https://github.com/airblade/vim-gitgutter'

" Add guiding lines
" Plug 'https://github.com/thaerkh/vim-indentguides'
" Disabling plugin because it overwrites conceallevel making JSON editing
" cumbersome (it hides the quotes)
" See https://github.com/thaerkh/vim-indentguides/issues/17

" map on brackets common pairs of commands
"Plug 'https://github.com/tpope/vim-unimpaired'

" honor .editorconfig files on projects
Plug 'https://github.com/editorconfig/editorconfig-vim'

" Initialize plugin system
call plug#end()

" Full config: when writing or reading a buffer, and on changes in insert
" and normal mode (after 1s; no delay when writing).
"call neomake#configure#automake('nrwi', 500)

" Open Neomake list automatically
" TODO not working, have to open it by hand
"let g:neomake_open_list = 2

" if eslintrc file present use Eslint, else use Prettier
"if findfile('.eslintrc', '.;') !=# ''
"  let g:neomake_javascript_enabled_makers = ['eslint']
"  let g:neomake_jsx_enabled_makers = ['eslint']
  " load local eslint in the project root to avoid global plugin installations
"  let s:eslint_path = system('PATH=$(npm bin):$PATH && which eslint')
"  let g:neomake_javascript_eslint_exe = substitute(s:eslint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
"else
"  let g:neomake_javascript_enabled_makers = ['prettier']
"  let g:neomake_jsx_enabled_makers = ['prettier']
"endif

"let g:neomake_python_enabled_makers = ['pylint']
