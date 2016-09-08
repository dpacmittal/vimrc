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
set background=dark
" hi Normal ctermbg=NONE		" Background transparency.
highlight Comment cterm=italic
highlight String cterm=italic
highlight Constant cterm=italic
set nocompatible              " be iMproved, required
filetype off                  " required

" Set mapleader to comma
let mapleader=","

set showcmd


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'
"call vundle#rc(path)



" let Vundle manage Vundle, required" The package manager
"" The package manager
Plugin 'VundleVim/Vundle.vim'

Plugin 'nathanaelkane/vim-indent-guides'

" Syntax checking
Plugin 'marijnh/tern_for_vim'
Plugin 'scrooloose/syntastic'
Plugin 'ervandew/supertab'
Plugin 'Shougo/neocomplete.vim'
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'tpope/vim-vinegar'
" Plugin 'Shougo/neosnippet'
" Plugin 'Shougo/neosnippet-snippets'



" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
Plugin 'justinj/vim-react-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'pangloss/vim-javascript'
Plugin 'airblade/vim-gitgutter'
Plugin 'jiangmiao/auto-pairs'

" Fuzzy search files, buffers, Most-recently-used files
Plugin 'kien/ctrlp.vim'       
" Elixir syntax highlighting
Plugin 'elixir-lang/vim-elixir'
Plugin 'flazz/vim-colorschemes'
" The following are examples of different formats supported.
" Keep bundle commands between here and filetype plugin indent on.
" scripts on GitHub repos
" Git Wrapper in vim
Plugin 'tpope/vim-fugitive'   
Plugin 'tpope/vim-surround'
Plugin 'Chiel92/vim-autoformat'
" Bundle 'davidhalter/jedi-vim'
" Bundle 'klen/python-mode'
" Bundle 'Lokaltog/vim-easymotion'
" Bundle 'tpope/vim-rails.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Bundle 'FuzzyFinder'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'terryma/vim-multiple-cursors'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'chriskempson/base16-vim'
Plugin 'mxw/vim-jsx'
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
let g:airline_theme='molokai' 
" let base16colorspace=256
colorscheme molokai


" Shortcuts
" F8 to disable all autoindenting - see http://vim.wikia.com/wiki/How_to_stop_auto_indenting
:nnoremap <F8> :setl noai nocin nosi inde=<CR>

" Start nerdtree automatically when no file is specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Ctrl+N shortcut to open nerdtree
map <leader>n :NERDTreeTabsToggle<CR>


" Don't clutter project directories. Save swp, swo files in TEMP dir
set backupdir=/tmp
set directory=/tmp


" Set indent guide size
set background=dark
let g:indent_guides_guide_size=1
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2

set exrc

"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>


source $HOME/.vim/neocomplete.vim

set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set st=4
set shiftwidth=4

set undofile
set undodir=/tmp


" Fix jsx indentation for .js extension
let g:jsx_ext_required=0

" Shortcuts for splits
nmap <leader>swh  :topleft  vnew<CR>
nmap <leader>swl :botright vnew<CR>
nmap <leader>swk    :topleft  new<CR>
nmap <leader>swj  :botright new<CR>
" buffer
nmap <leader>sh   :leftabove  vnew<CR>
nmap <leader>sl  :rightbelow vnew<CR>
nmap <leader>sk     :leftabove  new<CR>
nmap <leader>sj   :rightbelow new<CR>
