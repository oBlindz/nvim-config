" Carregar configurações gerais
source ~/.config/nvim/settings.vim

" Carregar plugins
source ~/.config/nvim/vim-plug/plugins.vim

" Configurações de plugins (Lua e Vimscript)
luafile ~/.config/nvim/lua/plugins/cmp-config.lua
source ~/.config/nvim/plug-config/lsp-config.vim

" Configuração de PATH
let $PATH = $PATH . ',/usr/local/bin'

" Configuração de servidores LSP
luafile ~/.config/nvim/lua/lsp/ts-lsp.lua
luafile ~/.config/nvim/lua/lsp/html-lsp.lua
luafile ~/.config/nvim/lua/lsp/css-lsp.lua
luafile ~/.config/nvim/lua/lsp/php-lsp.lua

" Selecionando o tema padrão
colorscheme gruvbox
