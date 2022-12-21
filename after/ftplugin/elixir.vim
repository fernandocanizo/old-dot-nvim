" F1 comment line
" TODO avoid indenting when pressing `i`
map <F1> 0i#<esc>j
imap <F1> <esc>0i#<esc>j

" F2 uncomment lines
"map <F2> :s/^#//e<return>:noh<return>j
map <F2> :s/\v(\s*)#/\1/e<return>:noh<return>j
imap <F2> <esc>:s/\v(\s*)#/\1/e<return>:noh<return>j

" disable indent guides
:IndentBlanklineDisable
