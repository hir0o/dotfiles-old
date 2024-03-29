if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'ulwlu/elly.vim'
" Plug 'ayu-theme/ayu-vim'

if has("nvim")
  " lsp
  Plug 'williamboman/mason.nvim'
  Plug 'williamboman/mason-lspconfig.nvim'
  Plug 'neovim/nvim-lspconfig'
  Plug 'tami5/lspsaga.nvim'
  Plug 'jose-elias-alvarez/null-ls.nvim'
  Plug 'MunifTanjim/prettier.nvim'
  Plug 'mattn/emmet-vim'
  Plug 'windwp/nvim-ts-autotag'
  Plug 'akinsho/toggleterm.nvim'
  Plug 'tpope/vim-surround'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  " Plug 'github/copilot.vim'
  " telescope
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  " cmp
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-vsnip'
  Plug 'hrsh7th/vim-vsnip'
  " defx
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'kristijanhusak/defx-git'
  Plug 'kristijanhusak/defx-icons'
  " tig
  Plug 'iberianpig/tig-explorer.vim'
  " tags
  Plug 'windwp/nvim-autopairs'
  " other
  Plug 'skanehira/translate.vim'
  " md
  Plug 'godlygeek/tabular'
  Plug 'preservim/vim-markdown'
  " git
  Plug 'lewis6991/gitsigns.nvim'
endif

call plug#end()
