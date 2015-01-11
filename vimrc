" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
set noswapfile
set backupdir=~/.vim/backup,.,/tmp

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

set ruler

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

if has("gui_running")
   " Font
   set guifont=Source\ Code\ Pro:h18
endif

"autocmd filetype python set expandtab

set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.out

" No tabs
set tabstop=4
set shiftwidth=4
set expandtab

