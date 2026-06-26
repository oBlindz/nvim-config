call plug#begin()
Plug 'preservim/nerdtree'
Plug 'ellisonleao/gruvbox.nvim'
call plug#end()

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-j>     :NERDTreeToggle<CR>

"Configurações do editor
:set tabstop=2
:set shiftwidth=2
:set expandtab

set background=dark
colorscheme gruvbox
