" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

execute pathogen#infect()

" 文字編碼加入utf8
set enc=utf8

" 幫助系統設置為中文
" set helplang=cn

set number

syntax enable

" 自動補全plugin - pydiction
filetype plugin indent on
let g:pydiction_location='/Users/jojo/.vim/bundle/pydiction/complete-dict'
let g:pydiction_menu_height=20

" 自訂縮排(Tab)位元數
set tabstop=4
set shiftwidth=4

" 搜尋不分大小寫
" set ic
set ignorecase

" 標記關鍵字 / 搜尋時高亮顯示匹配項
set hls

" hlight the last searched term
set hlsearch

" auto indenting / 自動縮進
" set ai
set autoindent

" 智能縮進
set smartindent

" 代碼折壘
set foldmethod=syntax

" show the cursor positon / 顯示位置指示器
set ruler

" 啟用行游標提示
set cursorline

" 只在 Normal 以及 Visual 模式使用滑鼠，也就是取消 Insert 模式的滑鼠
set mouse=nv








