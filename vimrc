set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'scrooloose/nerdtree'
" Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Bundle 'kien/ctrlp.vim'
Bundle 'sjl/gundo.vim'
Bundle 'rking/ag.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'mattn/emmet-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'tomtom/tcomment_vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Coffeescript settings
syntax enable
filetype plugin indent on

" Easymotion settings
let g:EasyMotion_leader_key = '<Leader>' 

colorscheme badwolf
" Make the gutters darker than the background.
let g:badwolf_darkgutter = 1
" Turn on CSS properties highlighting
let g:badwolf_css_props_highlight = 1

" Automatically re-source .vimrc when it's saved
autocmd BufWritePost .vimrc source $MYVIMRC

" keep cursor in the same column if possible
set nostartofline

" Highlight current column
set cursorline cursorcolumn

" Prevents some seurity issue
set modelines=0

" Sets a tab to 4 space characters
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Settings Steve Losh recommended here: http://stevelosh.com/blog/2010/09/coming-home-to-vim            
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2

" Changes line numbers to be relative
set relativenumber

" Changes leader from \ to , so it's easier to reach
let mapleader = ","

" Makes regex work like Perl
nnoremap / /\v
vnoremap / /\v

" Smart case-sensitive searches
set ignorecase
set smartcase

" Search globally by default
set gdefault

" Highlight search results as you type
set incsearch
set showmatch
set hlsearch

" Leader+space clears the current search term highlighting
nnoremap <leader><space> :noh<cr>

" Uses <tab> instead of % to move between bracket pairs
nnoremap <tab> %
vnoremap <tab> %

" Wrap settings 
set wrap
set textwidth=79
set formatoptions=qrn1

" Disables the arrow keys forcing you to use hjkl for movement
" nnoremap <up> <nop>
" nnoremap <down> <nop>
" nnoremap <left> <nop>
" nnoremap <right> <nop>
" inoremap <up> <nop>
" inoremap <down> <nop>
" inoremap <left> <nop>
" inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" Disable help key so you don't hit it by accident when pressing <esc>
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Autosave on Vim blur
au FocusLost * :wa

" ,W strips all trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" ,ev edits the .vimrc file
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

" ,vs opens a new vertical split and switches to it
nnoremap <leader>vs <C-w>v<C-w>l

" Open NERDtree with ,nt
map <leader>nt ;NERDTreeToggle<CR>
let NERDTreeShowLineNumbers=1

" Set filetype for .scss
au BufNewFile,BufRead *.scss set filetype=css.sass

:set omnifunc=csscomplete#CompleteCSS

" Fold tags
nnoremap <leader>ft Vatzf

" Requirements for CodeKit compatibility
set nobackup
set nowritebackup
set noswapfile

" Remappings for Colemak
" ----------------------

" Standard VI 'Homerow' Arrows
noremap n j
noremap e k
noremap i l

" o/O = beginning/end of line
noremap o ^
noremap O $

" s/S = Start/Start at BOL (inSert)
noremap s i
noremap S I

" k/K = repeat/reverse last search
noremap k n
noremap K N

" l/L = new Line below/above
noremap l o
noremap L O

" Switch ; and :
noremap ; :
noremap : ;

" j/J = Jump to end of word/WORD
noremap j e
noremap J E

" inneR text objects
onoremap r i

" Split Pane quick switching
noremap <C-h> <C-W>h
noremap <C-i> <C-W>l
noremap <C-n> <C-W>j
noremap <C-e> <C-W>k
