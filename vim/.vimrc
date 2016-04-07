set nocompatible
scriptencoding utf-8
set encoding=utf-8
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'christoomey/vim-tmux-navigator'
Plugin 'christoomey/vim-tmux-runner.git'
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'flazz/vim-colorschemes'


"Required for SnipMate
Plugin 'MarcWeber/vim-addon-mw-utils'
call vundle#end()
filetype plugin indent on

let mapleader = " "

" ===== PERSONAL =====
set background=dark
"colorscheme acg

set number
set numberwidth=4
set backspace=indent,eol,start
syn on

set incsearch
set ruler
set noswapfile

"Case insensitive
set ignorecase
set smartcase

"Soft tabs
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
set smarttab

" Splits autoresize
set winwidth=84
set winheight=5
set winminheight=5
set winheight=999

"Extra whitespace
set list 
set listchars=tab:»·,trail:»,nbsp:·
     
   
"Line 80 mark
set textwidth=0
set colorcolumn=+1
highlight ColorColumn ctermbg=8

set wrap
set linebreak
set nolist

set wrapmargin=0
set formatoptions-=t

set showcmd

autocmd BufEnter * silent! cd %:p:h

set laststatus=2

" ==== MOVEMENT ====
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
inoremap jk <Esc>

map <C-tab> :bn

" == SCROLLING ==
set scrolloff=10

" ==== RELATIVE NUMBERING====
set rnu
function! ToggleNumbersOn()
  set nu!
  set rnu
endfunction
function! ToggleRelativeOn()
  set rnu!
  set nu
endfunction
autocmd FocusLost * call ToggleRelativeOn()
autocmd FocusGained * call ToggleRelativeOn()
autocmd InsertEnter * call ToggleRelativeOn()
autocmd InsertLeave * call ToggleNumbersOn()

" ===== SYSTEM COPY & PASTE SUPPORT =====
"set pastetoggle=<F2> "To keep indents
"vnoremap <C-c> "*y
"map <silent><Leader>p :set paste<CR>o<esc>"*]p:set nopaste<cr>"
"map <silent><Leader><S-p> :set paste<CR>o<esc>"*]p:set nopaste<cr>"
"map <silent><C-v> :set paste<CR>o<esc>"*]p:set nopaste<cr>"
"set clipboard=unnamedplus
vmap <F6> :!xclip -f -sel clip<CR>
map <F7> :r!xclip -o -sel clip<CR>

"Allow moving around between Tmux windows
nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>

"tmux integration
let g:tmux_navigator_no_mappings = 1
let g:tmux_navigator_save_on_switch = 1

"==== NERDTree ====
"map <C-n> :NERDTreeToggle<cr>

" === UltiSnips ===
"let g:UltiSnipsExpandTrigger = "<C-space>"

" === NeoComplete ===
"let g:neocomplete#enable_at_startup=1
"let g:neocompelte#sources#syntax#min_keyword_length=3

set t_Co=256
