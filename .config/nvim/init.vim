call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree' 
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()


autocmd bufwritepost init.vim source $MYVIMRC

for f in split(glob('~/.config/nvim/config/**/*.vim'), '\n')
    exe 'source' f
endfor


