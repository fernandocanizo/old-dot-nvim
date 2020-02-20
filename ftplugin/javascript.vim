" ftplugin/javascript.vim

" F1 comment line
map <F1> _i//<esc>j
imap <F1> <esc>_i//<esc>j
vmap <F1> :norm _i//<enter>

" F2 uncomment line
map <F2> :s/\v^(\s*)\/\//\1/e<return>:noh<return>j
imap <F2> <esc>:s/\v^(\s*)\/\//\1/e<return>:noh<return>j
vmap <F2> :s/\v^(\s*)\/\//\1/<enter>

" F3 structured comment
map <F3> o<esc>i/<esc>73.yyp0O<space>
imap <F3> <esc>o<esc>i/<esc>73.yyp0O//<space>

" F4 file header
map <F4> <esc>1GO'use strict';<esc>o<esc>

" Don't put comment leader when pressing enter or using o/O
setlocal formatoptions-=tcora formatoptions+=jqn
" this is not working, for some reason it keeps loading system
" configuration
" I edited system configuration, and still sets the 't' flag! WTF!

" Show/hide linter messages
nmap <F9> :lwindow<enter>
imap <F9> <esc>:lwindow<enter>
nmap <F10> :lclose<enter>
imap <F10> <esc>:lclose<enter>

"echoerr "LOADING MY JS SETTINGS"
