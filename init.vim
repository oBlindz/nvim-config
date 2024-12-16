" Carregar configurações gerais
source $HOME/AppData/Local/nvim/settings.vim

" Carregar plugins
source $HOME/AppData/Local/nvim/vim-plug/plugins.vim

" Configurações de plugins (Lua e Vimscript)
luafile $HOME/AppData/Local/nvim/lua/plugins/cmp-config.lua
source $HOME/AppData/Local/nvim/plug-config/lsp-config.vim

" Configuração de servidores LSP
luafile $HOME/AppData/Local/nvim/lua/lsp/ts-lsp.lua

" Selecionando o tema padrão
colorscheme dracula

