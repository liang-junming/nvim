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
set fdm=indent " 设置以缩进格式自动折叠
nmap <C-j> zj
vmap <C-j> zj
nmap <C-k> zk
vmap <C-k> zk


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
Plug 'octol/vim-cpp-enhanced-highlight'

" 缩进线
Plug 'nathanaelkane/vim-indent-guides'

" 语法检查
Plug 'vim-syntastic/syntastic'

" markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

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
" === Language Highlight
" ===
" vim-cpp-enhanced-highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1


" ===
" === Ranger
" ===
let g:ranger_map_keys = 0
map <leader>r :Ranger<CR>


" ===
" === Floaterm
" ===
let g:floaterm_keymap_new = '<leader>ta'
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
map  <leader>gc <Plug>(easymotion-bd-f)
nmap <leader>gc <Plug>(easymotion-overwin-f)

" <leader>fs{char}{char} to move to {char}{char}
nmap <leader>gs <Plug>(easymotion-overwin-f2)

" Move to line
map <leader>gl <Plug>(easymotion-bd-jk)
nmap <leader>gl <Plug>(easymotion-overwin-line)

" Move to word
map  <leader>gw <Plug>(easymotion-bd-w)
nmap <leader>gw <Plug>(easymotion-overwin-w)


" ===
" === Vim Javascript
" ===
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1


" ===
" === Indent Guides
" ===
let g:indent_guides_enable_on_vim_startup = 1


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
let g:airline_theme = 'deus' "violet base16_solarized
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
      \ 'coc-explorer',
      \ 'coc-clangd',
      \ 'coc-markdownlint'
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
nmap <silent> <leader>cp <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>cn <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> <leader>ch :call <SID>show_documentation()<CR>

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
nmap <leader>cr <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>cs  <Plug>(coc-format-selected)
nmap <leader>cs  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>ca  <Plug>(coc-codeaction-selected)<CR>
nmap <leader>ca  <Plug>(coc-codeaction-selected)<CR>

" Remap keys for applying codeAction to the current buffer.
nmap <leader>cac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>cf  <Plug>(coc-fix-current)

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
nnoremap <silent><nowait> <leader>ld  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <leader>le  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <leader>lc  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <leader>lo  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <leader>ls  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <leader>cj  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <leader>ck  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <leader>lr  :<C-u>CocListResume<CR>

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
" === Markdown
" ===
let g:vim_markdown_no_default_key_mappings = 1
autocmd FileType markdown nmap <C-j> <Plug>Markdown_MoveToNextHeader
autocmd FileType markdown vmap <C-j> <Plug>Markdown_MoveToNextHeader
autocmd FileType markdown nmap <C-k> <Plug>Markdown_MoveToPreviousHeader
autocmd FileType markdown vmap <C-k> <Plug>Markdown_MoveToPreviousHeader
autocmd FileType markdown nmap [z <Plug>Markdown_MoveToCurHeader
autocmd FileType markdown vmap [z <Plug>Markdown_MoveToCurHeader



" ===
" === Which key
" ===
let g:which_key_map = {}
let g:which_key_map.f = {
  \ 'name': "+fzf/incsearch-fuzzy"
  \}

let g:which_key_map.m = {
  \ 'name': "+bookmark"
  \}

let g:which_key_map.u = {
  \ 'name': "+undotree"
  \}

let g:which_key_map.g = {
  \ 'name': "+easymotion"
  \}

let g:which_key_map.c = {
  \ 'name': "+coc"
  \}

let g:which_key_map.l = {
  \ 'name': "+coclist"
  \}

let g:which_key_map.t = {
  \ 'name': "+floaterm/translator"
  \}

let g:which_key_map.w = {
  \ 'name' : '+windows' ,
  \ 's' : ['<C-W>s'     , 'split-window-below']    ,
  \ 'v' : ['<C-W>v'     , 'split-window-below']    ,
  \ 'w' : ['<C-W>w'     , 'other-window']          ,
  \ 'd' : ['<C-W>c'     , 'delete-window']         ,
  \ 'h' : ['<C-W>h'     , 'window-left']           ,
  \ 'j' : ['<C-W>j'     , 'window-below']          ,
  \ 'l' : ['<C-W>l'     , 'window-right']          ,
  \ 'k' : ['<C-W>k'     , 'window-up']             ,
  \ 'H' : ['<C-W>5<'    , 'expand-window-left']    ,
  \ 'J' : [':resize +5' , 'expand-window-below']   ,
  \ 'L' : ['<C-W>5>'    , 'expand-window-right']   ,
  \ 'K' : [':resize -5' , 'expand-window-up']      ,
  \ '=' : ['<C-W>='     , 'balance-window']        ,
  \ 'f' : ['Windows'    , 'fzf-window']            ,
  \ }

let g:which_key_map.b = {
  \ 'name' : '+buffer' ,
  \ 'd' : ['bd'        , 'delete-buffer']   ,
  \ 'a' : ['bfirst'    , 'first-buffer']    ,
  \ 'h' : ['Startify'  , 'home-buffer']     ,
  \ 'l' : ['blast'     , 'last-buffer']     ,
  \ 'n' : ['bnext'     , 'next-buffer']     ,
  \ 'p' : ['bprevious' , 'previous-buffer'] ,
  \ 'f' : ['Buffers'   , 'fzf-buffer']      ,
  \ }

let g:which_key_map.d = {
  \ 'name' : '+markdown',
  \ 'j' : ['<Plug>Markdown_MoveToNextHeader', 'Markdown-GotoNextHeader'],
  \ 'k' : ['<Plug>Markdown_MoveToPreviousHeader', 'Markdown-GotoPreviousHeader'],
  \ 'n' : ['<Plug>Markdown_MoveToNextSiblingHeader', 'Markdown-GotoNextSiblingHeader'],
  \ 'p' : ['<Plug>Markdown_MoveToPreviousSiblingHeader', 'Markdown-GotoPreviousSiblingHeader'],
  \ 'h' : ['<Plug>Markdown_MoveToCurHeader', 'Markdown-GotoCurrentHeader'],
  \ 'u' : ['<Plug>Markdown_MoveToParentHeader', 'Markdown-GotoParentHeader'],
  \ 'v' : [':MarkdownPreviewToggle', 'Markdown-PreviewToggle'],
  \ }

call which_key#register('<Space>', "g:which_key_map")
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :WhichKey ';'<CR>

