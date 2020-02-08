" F1 comment line
map <F1> 0i#<esc>j
imap <F1> <esc>0i#<esc>j

" F2 uncomment lines
map <F2> :s/^#//e<return>:noh<return>j
imap <F2> <esc>:s/^#//e<return>:noh<return>j

" F3 structured comment
map <F3> o<esc>i#<esc>a-<esc>78.
imap <F3> <esc>o<esc>i#<esc>a-<esc>78.

" F4 header
map <F4> ggO#!/bin/bash<enter># uncomment to debug<enter>#set -x<enter>

imap <F4> <esc>ggO#!/bin/bash<enter># uncomment to debug<enter>#set -x<enter>

" use SPACES when TAB is pressed
set expandtab

" number of spaces to show for a TAB
set tabstop=2

" number of spaces for indent (>>, endfunction
set shiftwidth=2

" number of spaces for a tab in editing operations
set softtabstop=2

set number
set textwidth=0
