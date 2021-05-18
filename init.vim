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
set scrolloff=2 " 光标距离页面底端永远留2行位置
set encoding=utf-8
set cursorline
let g:mapleader = "\<Space>"
let g:maplocalleader = ";"
set timeoutlen=300


" ===
" === Key Remap
" ===
nmap - $
vmap - $
nmap \ %
vmap \ %


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
" === Split Screen
" ===
map <C-q> :q<CR>
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>


" ===
" === Tabs page
" ===
nmap <C-t>T :tabedit<CR>


" ===
" === Vim Plug
" ===
call plug#begin()
" 底部状态栏及其主题
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" 全局主题
Plug 'lifepillar/vim-solarized8'
Plug 'joshdick/onedark.vim'
Plug 'ajmwagar/vim-deus'
Plug 'michaelmalick/vim-colors-bluedrake'
Plug 'w0ng/vim-hybrid'
Plug 'morhetz/gruvbox'

" 模糊查找工具（很实用）
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" 启动页面
Plug 'mhinz/vim-startify'

" 自动匹配括号
Plug 'jiangmiao/auto-pairs'

" 书签
Plug 'mattesgroeger/vim-bookmarks'

" 撤销功能增强
Plug 'mbbill/undotree'

" 每次打开文件定位至上一次退出时的位置
Plug 'farmergreg/vim-lastplace'

" 代码阅读辅助工具，可给多个关键词分别以不同颜色高亮
Plug 'vasconcelloslf/vim-interestingwords'

" 超强大的语法分析插件（跳转、补全等），基于lsp，支持多种语言
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" git客户端
Plug 'tpope/vim-fugitive'

" 语法高亮
Plug 'pangloss/vim-javascript'

" 语法检查
Plug 'vim-syntastic/syntastic'

" 光标跳转
Plug 'easymotion/vim-easymotion'

" 查找
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'

" 基于浮动窗口的终端
Plug 'voldikss/vim-floaterm'

" 快捷键导航
Plug 'liuchengxu/vim-which-key'

" vim中打开ranger
Plug 'francoiscabrol/ranger.vim'
" If you use neovim, you have to add the dependency to the plugin bclose.vim
Plug 'rbgrouleff/bclose.vim'

" TODO: vim-session
call plug#end()


" ===
" === Ranger
" ===
let g:ranger_map_keys = 0
map <leader>r :Ranger<CR>


" ===
" === Floaterm
" ===
let g:floaterm_keymap_new = '<leader>tt'
let g:floaterm_keymap_prev = '<leader>tp'
let g:floaterm_keymap_next = '<leader>tn'
let g:floaterm_keymap_kill = '<leader>tk'
let g:floaterm_keymap_toggle = '<leader>tu'


" ===
" === Incsearch Incsearch-fuzzy
" ===
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
" 输入查找关键字时光标不移动
map g/ <Plug>(incsearch-stay)

map <leader>fz <Plug>(incsearch-fuzzy-/)
map <leader>fZ <Plug>(incsearch-fuzzy-?)
" 输入查找关键字时光标不移动
map <leader>fg <Plug>(incsearch-fuzzy-stay)
" 取消高亮查找到的关键字
nnoremap <Esc><Esc> :<C-u>nohlsearch<CR>


" ===
" === Easymotion
" ===
" <leader>fc{char} to move to {char}
map  <leader>fc <Plug>(easymotion-bd-f)
nmap <leader>fc <Plug>(easymotion-overwin-f)

" <leader>fs{char}{char} to move to {char}{char}
nmap <leader>fs <Plug>(easymotion-overwin-f2)

" Move to line
map <leader>gl <Plug>(easymotion-bd-jk)
nmap <leader>gl <Plug>(easymotion-overwin-line)

" Move to word
map  <leader>fw <Plug>(easymotion-bd-w)
nmap <leader>fw <Plug>(easymotion-overwin-w)


" ===
" === Vim Javascript
" ===
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1


" ===
" === Theme
" ===
syntax enable
" set t_Co=256
set termguicolors
" let g:deus_termcolors=256
" let g:solarized_termcolors=256
" let g:solarized_termtrans = 1
" let g:hybrid_custom_term_colors = 1

set background=dark
" colorscheme solarized8
colorscheme deus


" ===
" === Airline
" ===
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_theme = 'base16_solarized' " violet deus
let g:airline_detect_modified = 1
let g:airline_inactive_collapse = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 1


" ===
" === Fzf
" ===
" Mapping selecting mappings
" 可查所有按键绑定
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-line)
nmap <leader>ff :GFiles<CR>
nmap <leader>fb :Buffers<CR>
nmap <leader>fl :BLines<CR>
nmap <leader>fL :Lines<CR>


" ===
" === Boommark
" ===
"           Action	                            Shortcut	     Command
" Add/remove bookmark at current line	             mm	     :BookmarkToggle
nmap <leader>mm <Plug>BookmarkToggle
" Add/edit/remove annotation at current line	     mi	     :BookmarkAnnotate <TEXT>
nmap <leader>mi <Plug>BookmarkAnnotate
" Jump to next bookmark in buffer	                 mn	     :BookmarkNext
nmap <leader>mn <Plug>BookmarkNext
" Jump to previous bookmark in buffer	             mp	     :BookmarkPrev
nmap <leader>mp <Plug>BookmarkPrev
" Show all bookmarks (toggle)	                     ma	     :BookmarkShowAll
nmap <leader>ma <Plug>BookmarkShowAll
" Clear bookmarks in current buffer only	         mc	     :BookmarkClear
nmap <leader>mc <Plug>BookmarkClear
" Clear bookmarks in all buffers	                 mx	     :BookmarkClearAll
nmap <leader>mx <Plug>BookmarkClearAll
" Move up bookmark at current line	           [count]mkk	 :BookmarkMoveUp [<COUNT>]
nmap <leader>mk <Plug>BookmarkMoveUp
" Move down bookmark at current line	         [count]mjj	 :BookmarkMoveDown [<COUNT>]
nmap <leader>mj <plug>BookmarkMoveDown
" Move bookmark at current line to another line	[count]mg	 :BookmarkMoveToLine <LINE>
nmap <leader>mg <Plug>BookmarkMoveToLine
" Save all bookmarks to a file		                         :BookmarkSave <FILE_PATH>
nmap <leader>ms <Plug>BookmarkSave
" Load bookmarks from a file		                           :BookmarkLoad <FILE_PATH>
nmap <leader>ml <Plug>BookmarkLoad


" ===
" === Undotree
" ===
if has("persistent_undo")
  set undodir=$HOME/.undodir
  set undofile
endif
nmap <leader>uu :UndotreeToggle<CR>
nmap <leader>uf :UndotreeFocus<CR>


" ===
" === Interesting Words
" ===
nnoremap <silent> <leader>k :call InterestingWords('n')<cr>
vnoremap <silent> <leader>k :call InterestingWords('v')<cr>
nnoremap <silent> <leader>K :call UncolorAllWords()<cr>
nnoremap <silent> n :call WordNavigation(1)<cr>
nnoremap <silent> N :call WordNavigation(0)<cr>


" ===
" === Coc
" ===
let g:coc_global_extensions = [
      \ 'coc-marketplace',
      \ 'coc-json',
      \ 'coc-vimlsp',
      \ 'coc-tsserver',
      \ 'coc-translator',
      \ 'coc-explorer'
      \ ]
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
" set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=100

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocActionAsync('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
" xmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" Mappings for coc-translator
" popup
nmap <leader>tt <Plug>(coc-translator-p)
vmap <leader>tt <Plug>(coc-translator-pv)
" echo
nmap <leader>te <Plug>(coc-translator-e)
vmap <leader>te <Plug>(coc-translator-ev)
" replace
nmap <leader>tr <Plug>(coc-translator-r)
vmap <leader>tr <Plug>(coc-translator-rv)



" ===
" === Syntastic
" ===
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
" 打开文件时自动检测会打打降低打开文件的速度
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
" javascript 使用standard代码规范
let g:syntastic_javascript_checkers = ['standard']
" 保存文件时自动格式化
autocmd bufwritepost *.js silent !standard --fix %
set autoread



" ===
" === Which key
" ===
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :WhichKey ';'<CR>

