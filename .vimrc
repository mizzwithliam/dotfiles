set nocompatible
filetype off 

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'
" Recommended to install
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimproc'

NeoBundle 'w0ng/vim-hybrid.git'
NeoBundle 'vim-scripts/Lucius'
NeoBundle 'vim-scripts/Zenburn'
NeoBundle 'tomasr/molokai'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'petdance/vim-perl'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'hotchpotch/perldoc-vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'scrooloose/nerdtree.git'
NeoBundle 'Lokaltog/vim-powerline'
NeoBundle 'szw/vim-tags'
NeoBundle 'jpo/vim-railscasts-theme'
NeoBundle 'jeffreyiacono/vim-colors-wombat'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'therubymug/vim-pyte.git'
NeoBundle 'vim-scripts/newspaper.vim'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'cocopon/iceberg.vim'
NeoBundle 'jelera/vim-javascript-syntax'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'tpope/vim-surround.git'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'vim-scripts/twilight.git'
NeoBundle 'chriskempson/tomorrow-theme.git'
NeoBundle 'Twinside/vim-codeoverview'

NeoBundleCheck

syntax on
set number
set cursorline
set cursorcolumn
set showmode
set title
set ruler
set showcmd
set laststatus=2
set smartindent
"set expandtab
set ts=4 sw=4 sts=0
colorscheme hybrid
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,cp932,euc-jp,default,latin
set backspace=indent,eol,start

"改行やタブなどの空白を表示する
set list
set listchars=tab:->
hi SpecialKey guifg=Gray37 ctermfg=59
augroup HighlightTrailingSpaces
    autocmd!
    autocmd VimEnter,WinEnter,ColorScheme * highlight TrailingSpaces term=underline guibg=Blue ctermbg=Blue
    autocmd VimEnter,WinEnter * match TrailingSpaces /\s\+$/
augroup END

"括弧やクォーテーションを補完する
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
vnoremap [ "zdi[<C-R>z]<ESC>
vnoremap ( "zdi(<C-R>z)<ESC>
vnoremap " "zdi"<C-R>z"<ESC>
vnoremap ' "zdi'<C-R>z'<ESC>

"スワップファイルを作らない設定
set noswapfile

"矢印キー無効になってしまったので対策
if !has('gui_running')
    set notimeout
    set ttimeout
    set timeoutlen=100
endif

"neocomplcacheのための設定
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Select with <TAB>
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

let g:neocomplcache_ctags_arguments_list = {
    \ 'perl' : '-R -h ".pm"'
        \ }

let g:neocomplcache_snippets_dir = "~/.vim/snippets"
    " Define dictionary.
    let g:neocomplcache_dictionary_filetype_lists = {
        \ 'default'    : '',
        \ 'perl'       : $HOME . '/.vim/dict/perl.dict'
            \ }

" Define keyword.
    if !exists('g:neocomplcache_keyword_patterns')
        let g:neocomplcache_keyword_patterns = {}
endif
    let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

    " for snippets
    imap <expr><C-k> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : "\<C-n>"
    smap <C-k> <Plug>(neocomplcache_snippets_expand)

" キーバインドの変更
imap <C-j> <ESC>
vmap <C-j> <ESC>
nmap <F1> :VimFiler -split -simple -winwidth=35
nmap <C-i> :NERDTree
" スクロール可能にする
set mouse=a
" tagsジャンプの時に複数ある時は一覧表示
nnoremap <C-]> g<C-]>

" vim-tags
au BufNewFile,BufRead *.pm let g:vim_tags_project_tags_command = "ctags --languages=php -f ~/pm.tags `pwd` 2>/dev/null &"

" 外部設定ファイルを読み込む
if filereadable(expand('~/.vimrc.local'))
    source ~/.vimrc.local
endif

filetype plugin indent on
