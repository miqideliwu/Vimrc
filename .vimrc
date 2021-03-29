"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"	           _       _     _      _ _                
"	 _ __ ___ (_) __ _(_) __| | ___| (_)_      ___   _ 
"	| '_ ` _ \| |/ _` | |/ _` |/ _ \ | \ \ /\ / / | | |
"	| | | | | | | (_| | | (_| |  __/ | |\ V  V /| |_| |
"	|_| |_| |_|_|\__, |_|\__,_|\___|_|_| \_/\_/  \__,_|
"	                |_|                                
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" ==> General
" 设置历史操作记录的缓存大小
set history=1000

" 设置外部文件更新时自动读取
set autoread
au FocusGained,BufEnter * checktime

" 设置leader键
let mapleader = ","

" 设置快速保存退出
nmap <leader>q :wq<cr>

" 设置快速保存
nmap <leader>w :w!<cr>

" 设置忘记设置sudo时强制保存
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" ==> VIM user interface
" 设置向下预览7行
set so=7

" 开启wild menu
set wildmenu

" 总是显示当前位置
set ruler

" 关闭无用的buffer
set hid

" 设置命令行的高度
set cmdheight=1

" 设置搜索高亮
set hlsearch

" 设置一边输入一边搜索
set incsearch

" 设置搜索忽略大小写
set ignorecase

" 设置搜索智能识别大小写
set smartcase

" 设置正则表达式开启magic模式
set magic

" 显示括号匹配
set showmatch

" 设置括号闪烁的次数
set mat=2

" 开启vim特有功能 不兼容vi 不报错
set nocompatible
set noerrorbells
set novisualbell
" 错误终端代码置空
set t_vb=
set tm=500

" 设置左边距
set foldcolumn=1

" 设置行号
set number

" 设置鼠标滚动
set mouse=a

"设置cursorline
set cursorline

" 设置定界栏
set colorcolumn=116

" =======================
" ==> Color && Fonts
" 设置语法高亮
syntax enable

" 设置256 colors背景
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

try
    colorscheme dark
catch
endtry

set background=dark

" 设置编码
set encoding=utf8

" 设置unix为标准文件类型
set ffs=unix,dos,mac

" =======================
" ==> File, Backup, Undo
set nobackup
set nowb
set noswapfile

" =======================
" ==> Text, Tab, Indent
" 设置智能tab键
set smarttab

" 设置tab空格数
set shiftwidth=2
set tabstop=2

" 设置自动换行
set lbr
set tw=500

" 设置自动缩进
set ai   "auto indent
set si   "smart indent
set wrap "wrap lines

" =======================
" ==> Status line

" 总是显示状态栏
set laststatus=2

" 格式化状态栏
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

" =======================
" ==> Editig Mapping

" Alt+j/k移动一行
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z
" =======================

" ==> Plugin
call plug#begin('~/.vim/plugged')
" APP
Plug 'junegunn/vim-easy-align'
Plug 'mhinz/vim-startify'
Plug 'ryanoasis/vim-devicons'
Plug 'itchyny/calendar.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" BottomLine
Plug 'bling/vim-bufferline'
Plug 'vim-airline/vim-airline'

" TagList
Plug 'liuchengxu/vista.vim'

" Undo Tree
Plug 'mbbill/undotree'

" SideMenuTree
Plug 'preservim/nerdtree'

" AutoFormat
Plug 'Chiel92/vim-autoformat'

" AutoComplete
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer',  'for': ['c', 'cpp'] }

" AutoFormat
Plug 'Chiel92/vim-autoformat'

" Snippets
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'
call plug#end()
