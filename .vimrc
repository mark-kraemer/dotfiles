" ------------------------
" Basic Setup
" ------------------------
set nocompatible        " Don't be compatible with VI
call pathogen#infect()  " Use pathogen plugin for better plugin management

" ------------------------
" Leaders
" ------------------------
let mapleader = ","
let g:mapleader = ","

" ------------------------
" Display
" ------------------------
set linespace=3
set guifont=Monaco:h12
set ruler
set title
set cmdheight=2

" ------------------------
" Theme
" ------------------------
set background=dark
syntax on
colorscheme railscast

" ------------------------
" Scrolling
" ------------------------
set scrolloff=8
set sidescrolloff=15
set sidescroll=1
set backspace=indent,eol,start " Allow backspecing over everything in insert mode

" ------------------------
" Tabbing
" ------------------------
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab " Smart tabbing
set autoindent


" ------------------------
" Arrow Keys => For Newbies
" ------------------------
map <Left> :echo "no!"<cr>
map <Right> :echo "no!"<cr>
map <Up> :echo "no!"<cr>
map <Down> :echo "no!"<cr>

" History Length
set history=30

" Use bash instead of sh
" Pretty sure this is unnecessary because both are aliases in OSX
set shell=/bin/bash

" ------------------------
" Files
" ------------------------
"
" Don't backup. Already using
" other forms of version control.
set nobackup
set nowb
set noswapfile

" Turn on filetype detection
filetype on
filetype indent on
filetype plugin on

" ------------------------
" Searching
" ------------------------
set showcmd
set incsearch
set nohlsearch " Don't highlight results
set ignorecase " Don't search by case
set smartcase

" ------------------------
" Various
" ------------------------
set go=-T         " Hide GUI toolbar
set noerrorbells  " Don't annoy me with error bells
set mousehide     " Hide the mouse
set splitbelow    " When splitting, set new file on the bottom
set hidden        " Hide hidden files
set number        " Show line numbers

" ------------------------
" Plugin Configuration
" ------------------------
let g:CommandTAlwaysShowDotFiles = 1
let g:user_zen_expandabbr_key = '<c-e>'

" ------------------------
" Mappings
" ------------------------

" Quickly execute commond keystrokes
nmap <c-n> :bn<cr>
nmap <c-p> :bp<cr>
nmap <leader>s :sp<cr>
nmap <leader>v :vsplit<cr>
nmap <leader>w :bd<cr>
nmap <space> :

" Still use commonly mistyped commands
nmap :W :w
nmap :W! :w!
nmap :Q :q
nmap :Q! :q!
nmap :Wq! :wq!
nmap :WQ! :wq!
nmap <c-s-t> :%s/\s\+$//<cr>
nmap :rhs :%s/:\([^ ]*\)\(\s*\)=>/\1:/g<cr>

" Flush the CommandT files
nmap <leader>f :CommandTFlush<cr>

nnoremap <leader>ev :tabedit $MYVIMRC<cr>

" Source the vimrc file after saving it
if has ("autocmd")
  autocmd BufWritePost .vimrc source $MYVIMRC
endif

" ------------------------
" Truncating extra whitespace
" ------------------------
:highlight ExtraWhitespace ctermbg=red guibg=red
nmap <leader>tw :match ExtraWhitespace /\s\+$/<cr>
nmap <leader>mo :match<cr>
