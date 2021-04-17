set number relativenumber
set nu rnu
set noswapfile
set scrolloff=999

let NERDTreeQuitOnOpen=1
let mapleader=","
let g:loaded_clipboard_provider = 1

nnoremap nt :NERDTree<CR>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

call plug#begin('~/.vim/plugged')

Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'wakatime/vim-wakatime'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

