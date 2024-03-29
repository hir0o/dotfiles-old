" Description: Keymaps
"
" Leader
let mapleader = "\<Space>"

nnoremap <S-C-p> "13p
" Delete without yank
nnoremap <leader>d "_d
nnoremap x "_x


" Increment/decrement
nnoremap + <C-a>
nnoremap - <C-x>

" Select all
nmap <C-a> gg<S-v>G

nmap <silent>sq :<C-u>q! <CR>

" prettier
" range_formatting in visual mode
xmap <Leader>f <Plug>(prettier-format)

" formatting in normal mode
nmap <Leader>f <Plug>(prettier-format)

" navigate back and forward
nnoremap gp <C-o>
nnoremap gn <C-i> 

" Save
nmap <C-s> :w<Return>
nmap <C-s><C-q> :wq<Return>

" move
noremap h hzz
noremap j jzz
noremap k kzz
noremap l lzz


"-----------------------------
" Tabs

" Open current directory
nmap te :tabedit<Return>
nmap <S-Tab> :tabprev<Return>
nmap <Tab> :tabnext<Return>

"------------------------------
" Windows

" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w
" Move window
nmap <Space> <C-w>w
map s<left> <C-w>h
map s<up> <C-w>k
map s<down> <C-w>j
map s<right> <C-w>l
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l
" Resize window
nmap <C-w><left> <C-w><
nmap <C-w><right> <C-w>>
nmap <C-w><up> <C-w>+
nmap <C-w><down> <C-w>-

