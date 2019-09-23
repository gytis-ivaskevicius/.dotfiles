
autocmd BufEnter * :syntax sync fromstart

" Remember cursor position
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" Json comment highlighting
"autocmd FileType json syntax match Comment +\/\/.\+$+
