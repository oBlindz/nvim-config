" =============================================================================
" Plugin Manager Setup - vim-plug
" =============================================================================
filetype off

" Auto-install vim-plug if not present
let s:plugin_manager=expand('~/.vim/autoload/plug.vim')
let s:plugin_url='https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

if empty(glob(s:plugin_manager))
  echom 'vim-plug not found. Installing...'
  if executable('curl')
    silent exec '!curl -fLo ' . s:plugin_manager . ' --create-dirs ' . s:plugin_url
  elseif executable('wget')
    call mkdir(fnamemodify(s:plugin_manager, ':h'), 'p')
    silent exec '!wget --force-directories --no-check-certificate -O ' . expand(s:plugin_manager) . ' ' . s:plugin_url
  else
    echom 'Could not download vim-plug. No plugins were installed.'
    finish
  endif
  augroup vimplug
    autocmd!
    autocmd VimEnter * PlugInstall
  augroup END
endif

" =============================================================================
" Plugins Setup
" =============================================================================
call plug#begin('~/.config/nvim/autoload/plugged')

" LSP (Language Server Protocol)
Plug 'neovim/nvim-lspconfig'

" Autocompletion with nvim-cmp (replacement for nvim-compe)
Plug 'hrsh7th/nvim-cmp'              " Main completion plugin
Plug 'hrsh7th/cmp-nvim-lsp'          " LSP source for nvim-cmp
Plug 'hrsh7th/cmp-buffer'            " Buffer completions
Plug 'hrsh7th/cmp-path'              " Path completions
Plug 'hrsh7th/cmp-cmdline'           " Command-line completions
Plug 'saadparwaiz1/cmp_luasnip'      " LuaSnip source
Plug 'L3MON4D3/LuaSnip'              " Snippet engine

" Snippets
Plug 'hrsh7th/vim-vsnip'             " Optional: Old VSnip (remove if unused)
Plug 'hrsh7th/vim-vsnip-integ'

" File Tree
Plug 'nvim-tree/nvim-web-devicons'   " File icons (optional)
Plug 'nvim-tree/nvim-tree.lua'       " File tree explorer

call plug#end()
filetype plugin indent on
syntax enable

