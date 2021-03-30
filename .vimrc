call plug#begin('~/.config/nvim/plugged/')
  Plug 'mattn/emmet-vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'airblade/vim-gitgutter'
  Plug 'scrooloose/nerdtree'
  Plug 'tpope/vim-commentary'
  Plug 'fatih/vim-go'
  Plug 'jiangmiao/auto-pairs'
  Plug 'ayu-theme/ayu-vim'
call plug#end()

set termguicolors   " enable true colors support
let ayucolor="dark" " for mirage version of theme
colorscheme ayu

nmap <silent> <space>fmt <Plug>(coc-format)
