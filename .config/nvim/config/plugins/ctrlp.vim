let g:ctrlp_user_command = 'fd --type f --color=never "" %s'
let g:ctrlp_use_caching = 0
let g:ctrlp_root_markers = ['.git', 'pom.xml']
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'

nmap <leader>p :CtrlP<CR>
