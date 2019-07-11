call plug#begin()
" Plug 'roxma/nvim-completion-manager'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'honza/vim-snippets'
Plug 'kien/ctrlp.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'scrooloose/nerdtree'
call plug#end()

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
" Tree view
let g:netrw_banner=1
let g:netrw_liststyle=3


" Autocmd
autocmd bufwritepost init.vim so %
autocmd bufwritepre * %s/\s\+$//e     " remove extra whitespace on save
autocmd vimenter * NERDTree

"a ctrlp settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0

" Navigation
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-h> <c-w><c-h>

map <c-n> :NERDTreeToggle<cr>
nmap <c-s> :w<cr>
imap <c-s> <esc>:w<cr>a
nnoremap q :q<cr>
nnoremap gv `[v`]  " Select inserted text
imap <C-BS> <C-W>
nnoremap <leader>u :gundotoggle<cr>
set clipboard=unnamedplus
nnoremap P "0p <CR>

" Search
set hlsearch
set smartcase
set ignorecase
nnoremap <c-_> :nohl<cr><c-_>  " Ctrl + / To clear highlighting

" Indent
set autoindent
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=1

" Folds
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent
nnoremap <space> za   " space open/closes folds


" Backup
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" Editor config
set backspace=indent,eol,start
set cursorline
set relativenumber
set ruler
set showcmd
set showmatch

"set spell
set textwidth=100
set undolevels=1000
set visualbell
set wildmenu
set splitbelow
set splitright
