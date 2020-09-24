" __  ____   __  _   ___     _____ __  __ ____   ____
"|  \/  \ \ / / | \ | \ \   / /_ _|  \/  |  _ \ / ___|
"| |\/| |\ V /  |  \| |\ \ / / | || |\/| | |_) | |
"| |  | | | |   | |\  | \ V /  | || |  | |  _ <| |___
"|_|  |_| |_|   |_| \_|  \_/  |___|_|  |_|_| \_\\____|

" Author: @Allen.Liang

" ===
" === Module Name
" ===


" ===
" === Normal Config
" ===
set nu
set laststatus=2
set scrolloff=20
set encoding=utf-8


" ===
" === Key Remap
" ===
noremap k j
noremap j k
noremap t l


" ===
" === Split Screen
" ===
map <C-w> <C-w>w
map Q :q<CR>
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>


" ===
" === Tabs page
" ===
map l :tabedit<CR>
map <tab> :+tabnext<CR>
map <s-tab> :-tabnext<CR>


" ===
" === Vim Plug
" ===
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()


" ===
" === Airline
" ===
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_theme = 'bubblegum' " violet deus
let g:airline_detect_modified = 1
let g:airline_inactive_collapse = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 1
