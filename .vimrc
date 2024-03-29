" Install vim plug if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

if has('nvim')
    if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
        silent !curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs 
            \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif
endif

call plug#begin('~/.vim/plugged')

" Plugin 'nathanaelkane/vim-indent-guides' "Causes ugly white tabspace issue"

" Auto-completion
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': { -> coc#util#install()}}

" Highlights color in hex, rgba?, hsla?
Plug 'gorodinskiy/vim-coloresque'

" Git icons in gutters
Plug 'airblade/vim-gitgutter'

" Auto create matching pair of brackets
Plug 'jiangmiao/auto-pairs'
let g:AutoPairsShortcutToggle='<Leader>ap'

" Fuzzy search files, buffers, Most-recently-used files
Plug 'junegunn/fzf'

" Status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Git Wrapper in vim
Plug 'tpope/vim-fugitive'   

" Allows surrounding selected text with quotes/brackets etc.
Plug 'tpope/vim-surround'

" Nerdtree file manager
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs'

" Multiple cursors on pressing ctrl+n
Plug 'mg979/vim-visual-multi'

Plug 'pangloss/vim-javascript'
Plug 'flazz/vim-colorschemes'
Plug 'morhetz/gruvbox'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
call plug#end()            " required

" -------------------------
" Start customizations
" -------------------------
syntax on
" show linenumber
set number
set relativenumber

set showmatch                           " show matching pair of bracket

" Search options
set ignorecase                          " ignorecase
set hlsearch                            " highlight search matches
set incsearch                           " incremental search

set splitbelow                          " put new split below for horizontal splits
set splitright                          " put new plit on right for vertical splits
set t_Co=256                            " use 256 colors
set t_ut=				                " Fixes background issue in tmux
set laststatus=2			            " Enable statusline (for vim-airline)
let g:kolor_italic=1                    " Enable italic. Default: 1
let g:kolor_bold=1                      " Enable bold. Default: 1
let g:kolor_underlined=0                " Enable underline. Default: 0
let g:kolor_alternative_matchparen=0    " Gray 'MatchParen' color. Default: 0
" syntax enable
" hi Normal ctermbg=NONE		" Background transparency.

" Don't clutter project directories. Save swp, swo files in TEMP dir
set backupdir=/tmp
set directory=/tmp

" tabs and spacing
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set shiftwidth=4

set undofile
set undodir=/tmp


highlight Comment cterm=italic
highlight String cterm=italic
highlight Constant cterm=italic
set nocompatible              " be iMproved, required
filetype off                  " required

" Set mapleader to comma
let mapleader=","

set hidden              " Make buffers hidable.
" set paste               " Make paste by default. Doesn't harm. Update: Apparently its not recommended
set showcmd
set wrap
set autoread							" Automatically update buffer when file on disk updates


filetype plugin indent on     " required

let g:airline_theme='molokai' 
let g:airline_powerline_fonts=1



" Shortcuts
" F8 to disable all autoindenting - see http://vim.wikia.com/wiki/How_to_stop_auto_indenting
" :nnoremap <F8> :setl noai nocin nosi inde=<CR>

" Start nerdtree automatically when no file is specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" ,n shortcut to open nerdtree
map <leader>n :NERDTreeTabsToggle<CR>




" Set indent guide size
let g:indent_guides_guide_size=1
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2


"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>


source $HOME/.vim/coc.vim


" color scheme
let g:gruvbox_italic=1
" set term=xterm-256color
colorscheme gruvbox
set termguicolors  " Fixes 256 color according to https://github.com/morhetz/gruvbox/wiki/Terminal-specific
set background=dark "fix white colored tabspace"

set ai
set clipboard+=unnamedplus

autocmd FileType php let b:coc_root_patterns = ['wp-config.php']
let g:coc_global_extensions = ['coc-css', 'coc-tsserver', 'coc-json', 'coc-snippets', 'coc-lists', 'coc-highlight', 'coc-eslint', 'coc-tslint', 'coc-prettier', 'coc-phpls']

" Code folding
set foldmethod=indent
map <leader>f zA

" CocList shortcut
map <leader>l :CocList files<CR>

" Telescope shortcuts
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
