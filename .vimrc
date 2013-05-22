"vundle設定（プラグイン一括管理）
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
"：BundleCleanコマンドで消されないための対策。
Bundle 'vundle'

"他のプラグインはこれより下に書き込むこと。
"例
"Bundle 'プラグイン名'

Bundle 'nanotech/jellybeans.vim'
Bundle 'scrooloose/syntastic'
Bundle 'petdance/vim-perl'
Bundle 'hotchpotch/perldoc-vim'
Bundle 'Shougo/neocomplcache'
Bundle 'thinca/vim-quickrun'
Bundle 'scrooloose/syntastic'
Bundle 'Shougo/neocomplcache'

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
set expandtab
set ts=4 sw=4 sts=0
colorscheme jellybeans
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,cp932,euc-jp,default,latin
set backspace=indent,eol,start

"改行やタブなどの空白を表示する
"set list
"set listchars=eol:¬,tab:->

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
