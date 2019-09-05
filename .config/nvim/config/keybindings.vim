" Ctrl C/V to copy paste
vmap <C-C> "+y
nmap <C-C> "+yy
imap <C-V> <Esc>"+pa

" Navigate between splits
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
nmap <C-h> <C-w>h

" Arrows in insert mode
inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-l> <Right>
inoremap <C-h> <Left>

" Escape insert mode
inoremap jk <Esc>
inoremap kj <Esc>
inoremap jj <Esc>

" Search will center on the line it's found in.
nnoremap N Nzzzv
nnoremap n nzzzv

" Ctrl+Backspace - delete word
imap <C-H> <C-W>

nmap <c-s> :w<cr>
nnoremap <c-_> :nohl<cr><c-_>


"noremap K ciw
"noremap J ci"

