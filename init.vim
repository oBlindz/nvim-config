call plug#begin()
Plug 'preservim/nerdtree'
Plug 'ellisonleao/gruvbox.nvim'
call plug#end()

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-j>     :NERDTree<CR>

set background=dark
colorscheme gruvbox
