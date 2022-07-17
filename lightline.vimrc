" Configuration for https://github.com/itchyny/lightline.vim

set laststatus=2 " always show status line

" don't show the -- INSERT -- in insert mode. Mode is already shown by
set noshowmode
let g:lightline = {
  \ 'colorscheme': 'wombat',
  \ 'active': {
  \   'left': [
  \     [ 'mode', 'paste' ],
  \     [ 'readonly', 'filename', 'modified', 'gitbranch' ]
  \     ]
  \   },
  \ }

