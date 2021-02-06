set relativenumber

let g:loaded_clipboard_provider = 1

nnoremap nt :NERDTree<CR>

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

