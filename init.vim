set number relativenumber
set nu rnu
set noswapfile
set scrolloff=999

set tabstop=2
set shiftwidth=2
set expandtab

let NERDTreeQuitOnOpen=1
let mapleader=","
let g:loaded_clipboard_provider = 1

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
noremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <silent> g? <cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>

call plug#begin()

Plug 'godlygeek/tabular'
Plug 'preservim/nerdtree'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'runoshun/tscompletejob'
Plug 'prabirshrestha/asyncomplete-tscompletejob.vim'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'github/copilot.vim'
Plug 'lbrayner/vim-rzip'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

call asyncomplete#register_source(asyncomplete#sources#tscompletejob#get_source_options({
    \ 'name': 'tscompletejob',
    \ 'allowlist': ['typescript'],
    \ 'completor': function('asyncomplete#sources#tscompletejob#completor'),
    \ }))
