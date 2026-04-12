# Plugins
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'ellisonleao/gruvbox.nvim'
call plug#end()

# Shortcuts
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-j>     :NERDTree<CR>

# Styles setup
set background=dark
colorscheme gruvbox
