
" F1 comment line
map <F1> _i--<esc>j
imap <F1> <esc>_i--<esc>j
vmap <F1> :norm _i--<enter>

" F2 uncomment line
map <F2> :s/\v^(\s*)--/\1/e<return>:noh<return>j
imap <F2> <esc>:s/\v^(\s*)--/\1/e<return>:noh<return>j
vmap <F2> :s/\v^(\s*)--/\1/<return>:noh<return>

