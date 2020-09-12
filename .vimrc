call plug#begin('~/.config/nvim/plugged/')
  Plug 'mattn/emmet-vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'ayu-theme/ayu-vim' " or other package manager
call plug#end()

set termguicolors   " enable true colors support
let ayucolor="dark" " for mirage version of theme
colorscheme ayu
