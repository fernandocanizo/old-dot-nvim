colorscheme elflord

" use SPACES when TAB is pressed
set expandtab

" number of spaces to show for a TAB
set tabstop=2

" number of spaces for indent (>>, endfunction
set shiftwidth=2

" number of spaces for a tab in editing operations
set softtabstop=2

" 125 columns is good for git's pull request view, but I like to work with vsplits
set textwidth=75

set smartindent

" TODO it would be nice to have this when on a comment, but it's not cool for code
set nowrap
set smartcase

" number lines
set number

" do not scroll as I type, it's annoying
set noincsearch

" don't wrap around file on searches
set nowrapscan

" show xterm title
set title

" show the cursor position all the time
set ruler

" highlight column when you get too wide
set colorcolumn=75

set statusline=%f%m%r%h%w\ ff=%{&ff}\ ft=%Y\ lines=%L\ %p%%\ LINE=%l\ COL=%v

" place only a single space between sentences when joinging lines.
set nojoinspaces

" allow me to switch to another buffer even if I haven't written my changes
set hidden

" highlight current line and column
set cursorline
set cursorcolumn

" more intuitive way to put the new split
set splitbelow
set splitright

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

" explicitly set mapleader to \
let mapleader = "\\"

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

" by albertito@lugfi: hl in red spaces after text on EOL
highlight WhiteSpaceEOL ctermbg=red guibg=red
match WhiteSpaceEOL /\v\s+$/

" by luca@lugfi: hl in red spaces at the beginning
highlight SpaceError ctermbg=red
match SpaceError /\v^( +|\t +)\S*/
match SpaceError /\v\s+$/

" mark any tabs that are not at the beginning of the line (indentation) as an error:
match errorMsg /[^\t]\zs\t\+/

" jump to last position we were editing on this file
autocmd BufReadPost * if line("'\"") | exe "'\"" | endif

" Open files completely unfolded
au BufRead * normal zR
