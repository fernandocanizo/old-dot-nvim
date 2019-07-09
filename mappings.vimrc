" explicitly set mapleader to \
let mapleader = "\\"

" toggle current line highlighting
map <F6> :set cursorline!<enter>:set cursorline?<enter>

" new tab ctrl-t
nmap <c-t> <esc>:tabnew<return>
" switch to left or right ctrl-h ctrl-l
nmap <Leader>h :tabprevious<return>
nmap <Leader>l :tabnext<return>

" buffer navigation
nmap <c-h> :bprevious<enter>
nmap <c-l> :bnext<enter>

" scroll up/down one line keeping current position
map <C-j> <C-e>j
map <C-k> <C-y>k

" toggle search highlighting
map <F7> :set hls!<enter>:set hls?<enter>

" remap quit and macro recording
nnoremap <Leader>r q
nmap q :q<enter>

" Indenting
vmap <tab> >>
vmap <S-tab> <<

set pastetoggle=<F5>

" shift+insert copies from XA_PRIMARY (mouse selection)
" this mapping copies from XA_SECONDARY (clipboard)
" equivalent to CTRL-V in other editors
map <Leader>p "+gP

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" don't loose your vertical split when closing a buffer
nnoremap <C-c> :bp\|bd #<enter>
