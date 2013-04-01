syntax on
set number
set cursorline
set showmode
set title
set ruler
set showcmd
set showmatch
set laststatus=2
set smartindent
set expandtab
set ts=4 sw=4 sts=0
colorscheme jellybeans
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,cp932,euc-jp,default,latin

"改行やタブなどの空白を表示する
"set list
"set listchars=eol:¬,tab:->

"スワップファイルを作らない設定
set noswapfile 

"vundle設定（プラグイン一括管理）
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
"：BundleCleanコマンドで消されないための対策。
Bundle 'vundle'

"他のプラグインはこれより下に書き込むこと。
"例
"Bundle 'プラグイン名'

Bundle 'Shougo/neocomplcache'
Bundle 'nanotech/jellybeans.vim'
Bundle 'scrooloose/syntastic'
Bundle 'petdance/vim-perl'
Bundle 'hotchpotch/perldoc-vim'
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neocomplcache-snippets-complete'
Bundle 'thinca/vim-quickrun'
Bundle 'scrooloose/syntastic'


"neocomplcache の設定
let g:neocomplcache_enable_at_startup = 1

"矢印キー無効になってしまったので対策
if !has('gui_running')
    set notimeout
    set ttimeout
    set timeoutlen=100
endif


