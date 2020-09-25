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
set relativenumber
set laststatus=2
set scrolloff=20 " 光标距离页面底端永远留20行位置
set encoding=utf-8
set cursorline
let mapleader = " "


" ===
" === Tab
" ===
set expandtab " tab键转为空格
set tabstop=2
set shiftwidth=2
set smartindent


" ===
" === Search
" ===
set incsearch
set hlsearch
set ignorecase
set smartcase


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
Plug 'altercation/vim-colors-solarized'
Plug 'joshdick/onedark.vim'
Plug 'ajmwagar/vim-deus'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-startify'
Plug 'yggdroot/indentline'
Plug 'jiangmiao/auto-pairs'
Plug 'mattesgroeger/vim-bookmarks'
Plug 'mbbill/undotree'
Plug 'farmergreg/vim-lastplace'
Plug 'itchyny/vim-cursorword'
Plug 'vasconcelloslf/vim-interestingwords'
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-icons'
" TODO: Plug 'easymotion/vim-easymotion'
" TODO: haya14busa/incsearch.vim
" TODO: haya14busa/incsearch-fuzzy.vim
" TODO: haya14busa/incsearch-easymotion.vim
" TODO: vim-session
call plug#end()


" ===
" === Theme
" ===
syntax enable
set t_Co=256
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
let g:deus_termcolors=256
let g:solarized_termcolors=256

set background=dark
colorscheme deus


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


" ===
" === Identline
" ===
let g:indentLine_color_term = 237


" ===
" === Boommark
" ===
"           Action	                            Shortcut	     Command
" Add/remove bookmark at current line	             mm	     :BookmarkToggle
" Add/edit/remove annotation at current line	     mi	     :BookmarkAnnotate <TEXT>
" Jump to next bookmark in buffer	                 mn	     :BookmarkNext
" Jump to previous bookmark in buffer	             mp	     :BookmarkPrev
" Show all bookmarks (toggle)	                     ma	     :BookmarkShowAll
" Clear bookmarks in current buffer only	         mc	     :BookmarkClear
" Clear bookmarks in all buffers	                 mx	     :BookmarkClearAll
" Move up bookmark at current line	           [count]mkk	 :BookmarkMoveUp [<COUNT>]
" Move down bookmark at current line	         [count]mjj	 :BookmarkMoveDown [<COUNT>]
" Move bookmark at current line to another line	[count]mg	 :BookmarkMoveToLine <LINE>
" Save all bookmarks to a file		                         :BookmarkSave <FILE_PATH>
" Load bookmarks from a file		                           :BookmarkLoad <FILE_PATH>


" ===
" === Undotree
" ===
if has("persistent_undo")
  set undodir=$HOME/.undodir
  set undofile
endif


" ===
" === Interesting Words
" ===
nnoremap <silent> <leader>k :call InterestingWords('n')<cr>
vnoremap <silent> <leader>k :call InterestingWords('v')<cr>
nnoremap <silent> <leader>K :call UncolorAllWords()<cr>
nnoremap <silent> n :call WordNavigation(1)<cr>
nnoremap <silent> N :call WordNavigation(0)<cr>


" ===
" === Defx Tree
" ===
" 使用 ;e 切换显示文件浏览，使用 ;a 查找到当前文件位置
let g:maplocalleader=';'
nnoremap <silent> <LocalLeader>e
\ :<C-u>Defx -resume -toggle -buffer-name=tab`tabpagenr()`<CR>
nnoremap <silent> <LocalLeader>a
\ :<C-u>Defx -resume -buffer-name=tab`tabpagenr()` -search=`expand('%:p')`<CR>

function! s:defx_mappings() abort
	" Defx window keyboard mappings
	setlocal signcolumn=no
	" 使用回车打开文件
	nnoremap <silent><buffer><expr> <CR> defx#do_action('multi', ['drop'])
endfunction

call defx#custom#option('_', {
	\ 'columns': 'indent:git:icons:filename',
	\ 'winwidth': 25,
	\ 'split': 'vertical',
	\ 'direction': 'topleft',
	\ 'listed': 1,
	\ 'show_ignored_files': 0,
	\ 'root_marker': '≡ ',
	\ 'ignored_files':
	\     '.mypy_cache,.pytest_cache,.git,.hg,.svn,.stversions'
	\   . ',__pycache__,.sass-cache,*.egg-info,.DS_Store,*.pyc,*.swp'
	\ })

autocmd FileType defx call s:defx_mappings()
