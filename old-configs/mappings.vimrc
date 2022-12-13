"" explicitly set mapleader to \
"let mapleader = "\\"
"
"" toggle current line highlighting
"map <F6> :set cursorline!<enter>:set cursorline?<enter>
"
"" new tab ctrl-t
"nmap <c-t> <esc>:tabnew<return>
"" switch to left or right ctrl-h ctrl-l
"nmap <Leader>h :tabprevious<return>
"nmap <Leader>l :tabnext<return>
"
"" buffer navigation
"nmap <c-h> :bprevious<enter>
"nmap <c-l> :bnext<enter>
"
"" scroll up/down one line keeping current position
"map <C-j> <C-e>j
"map <C-k> <C-y>k
"
"" highlight searches
"nnoremap / :set hls<enter>/\v
"nnoremap ? :set hls<enter>?\v
"nnoremap # :set hls<enter>#\v
"nnoremap * :set hls<enter>*\v
"
"" toggle search highlighting
"map <F7> :set hls!<enter>:set hls?<enter>
"
"" remap quit and macro recording
"nnoremap <Leader>r q
"nmap q :q<enter>
"
"" Indenting
"vmap <tab> >>
"vmap <S-tab> <<
"
"" F1 shell-like line commenting
"nmap <F1> 0i#<esc>j
"imap <F1> <esc>0i#<esc>j
"
"" F2 shell-like line uncommenting
"nmap <F2> :s/^#//e<return>:noh<return>j
"imap <F2> <esc>:s/^#//e<return>:noh<return>j
"
"" line separator
"nmap <F3> o<esc>a#<esc>79.
"imap <F3> <esc>0a#<esc>79.o
"
"set pastetoggle=<F5>
"
"" shift+insert copies from XA_PRIMARY (mouse selection)
"" this mapping copies from XA_SECONDARY (clipboard)
"" equivalent to CTRL-V in other editors
"map <Leader>p "+gP
"
"" use <tab> for trigger completion and navigate to the next complete item
"function! s:check_back_space() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~ '\s'
"endfunction
"
"inoremap <silent><expr> <TAB>
"      \ pumvisible() ? "\<C-n>" :
"      \ <SID>check_back_space() ? "\<TAB>" :
"      \ coc#refresh()
"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
"
"" don't loose your vertical split when closing a buffer
"nnoremap <C-c> :bp\|bd #<enter>
"
"" Neomake (review later and choose my own)
"nmap <Leader><Space>o :lopen<CR>      " open location window
"nmap <Leader><Space>c :lclose<CR>     " close location window
"nmap <Leader><Space>, :ll<CR>         " go to current error/warning
"nmap <Leader><Space>n :lnext<CR>      " next error/warning
"nmap <Leader><Space>p :lprev<CR>      " previous error/warning
"
"" Chadtree toggle
"nnoremap <leader>t <cmd>CHADopen<cr>
"" clear quick fix list (suggested in chadtree readme)
"nnoremap <leader>l <cmd>call setqflist([])<cr>
"
"
