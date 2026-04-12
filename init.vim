# Plugins
call plug#begin()
Plug 'preservim/nerdtree'
call plug#end()

# Shortcuts
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-j>     :NERDTree<CR>

# Automacically calls
autocmd VimEnter * NERDTree | wincmd p
