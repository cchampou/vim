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

nnoremap <esc> :noh<CR><esc>

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

nnoremap <leader>m :LspHover<CR>
nnoremap <leader>. :LspDef<CR>
noremap [d :LspPreviousDiagnostic<CR>
noremap ]d :LspNextDiagnostic<CR>

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
noremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <silent> g? <cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>

" ALE linter javascript
let g:ale_fixers = ['eslint', 'prettier']
let g:ale_fix_on_save = 1

call plug#begin()

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'godlygeek/tabular'
Plug 'preservim/nerdtree'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'github/copilot.vim'
Plug 'lbrayner/vim-rzip'
Plug 'dense-analysis/ale'
Plug 'hedyhli/outline.nvim'
Plug 'epheien/outline-treesitter-provider.nvim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'neovim/nvim-lspconfig'

call plug#end()

lua require("outline").setup({})

