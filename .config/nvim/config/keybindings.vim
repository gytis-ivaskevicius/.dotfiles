vmap <C-C> "+y

" Navigate between splits
map <C-j> <C-w>j 
map <C-k> <C-w>k 
map <C-l> <C-w>l 
map <C-h> <C-w>h 

" Arrows in insert mode
inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-l> <Right>
inoremap <C-h> <Left>

" Escape insert mode
inoremap jk <Esc>
inoremap kj <Esc>
inoremap jj <Esc>


nmap <c-s> :w<cr>
nnoremap <c-_> :nohl<cr><c-_>

" Search will center on the line it's found in.
nnoremap N Nzzzv
nnoremap n nzzzv


"noremap K ciw
"noremap J ci"
