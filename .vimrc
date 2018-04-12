"
" vundle
"
set nocompatible " be iMproved, required
filetype off     " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugins
"Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-sleuth'
"Bundle 'tpope/vim-surround'
Bundle 'nanotech/jellybeans.vim'
Bundle 'scrooloose/syntastic'
"Bundle 'kien/ctrlp.vim'
"Bundle 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"
" mine
"
set backspace=indent,eol,start
set autoindent
set smarttab
set ruler
set number
set hlsearch


" colors
syntax enable
if &t_Co == 8 && $TERM !~# '^linux\|^Eterm'
  set t_Co=16
endif


" disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_javascript_jshint_args="-c ~/.jshint"
