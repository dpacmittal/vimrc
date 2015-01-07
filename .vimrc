syntax on
set nu
set showmatch
set ignorecase
set hlsearch
set incsearch
set autoindent
set splitbelow
set splitright
set t_Co=256
set t_ut=				" Fixes background issue in tmux
set laststatus=2			" Enable statusline (for vim-airline)
let g:kolor_italic=1                    " Enable italic. Default: 1
let g:kolor_bold=1                      " Enable bold. Default: 1
let g:kolor_underlined=0                " Enable underline. Default: 0
let g:kolor_alternative_matchparen=0    " Gray 'MatchParen' color. Default: 0
syntax enable
set background=light
colorscheme kolor
" hi Normal ctermbg=NONE		" Background transparency.
highlight Comment cterm=italic
highlight String cterm=italic
highlight Constant cterm=italic
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required" The package manager
"" The package manager
Bundle 'gmarik/vundle'
" Syntax checking
Bundle 'scrooloose/syntastic'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'Shougo/neosnippet'
Bundle 'Shougo/neosnippet-snippets'
Bundle 'altercation/vim-colors-solarized'
" Fuzzy search files, buffers, Most-recently-used files
Bundle 'kien/ctrlp.vim'       
" The following are examples of different formats supported.
" Keep bundle commands between here and filetype plugin indent on.
" scripts on GitHub repos
" Git Wrapper in vim
Bundle 'tpope/vim-fugitive'   
" Bundle 'davidhalter/jedi-vim'
" Bundle 'klen/python-mode'
" Bundle 'Lokaltog/vim-easymotion'
" Bundle 'tpope/vim-rails.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
Bundle 'L9'
" Bundle 'FuzzyFinder'
Bundle 'scrooloose/nerdtree'
Bundle 'bling/vim-airline'
" scripts not on GitHub
" Bundle 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Bundle 'file:///home/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required
filetype plugin on
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
" Put your stuff after this line
"
"
" Settings for neocomplcache
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
let g:airline_theme='molokai' 
