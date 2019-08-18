set number relativenumber
set smartcase ignorecase

set smartindent	smarttab	
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab

set mouse=a
set hidden
"set spell

syntax on

let no_buffers_menu=1
let mapleader = " "
set wildignore+=*/tmp/*,*.so,*.swp,*.pyc,*.db,*.sqlite




" session management
let g:session_directory = "~/.config/nvim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1

autocmd BufEnter * :syntax sync fromstart

" Remember cursor position
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif


