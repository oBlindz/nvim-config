--Pluggins
local vim = vim
local Plug = vim.fn['plug#']
vim.call('plug#begin')
Plug('preservim/nerdtree')
Plug('ellisonleao/gruvbox.nvim')
vim.call('plug#end')

--Styling
vim.cmd('silent! colorscheme gruvbox')
vim.cmd('silent! :set tabstop=2')
vim.cmd('silent! :set shiftwidth=2')
vim.cmd('silent! :set expandtab')

--Shortcuts
vim.keymap.set('n','<C-o>',':NERDTreeToggle<CR>',{silent=true})
vim.keymap.set('n','<C-j>',':NERDTree<CR>',{silent=true})
