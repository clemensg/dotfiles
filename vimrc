" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
set noswapfile
set backupdir=~/.vim/backup,.,/tmp

" NeoBundle (Vim plugin manager, a Vundle Fork)
set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#rc(expand('~/.vim/bundle/'))
" Required
NeoBundleFetch 'Shougo/neobundle.vim'
" Solarized color scheme
NeoBundle 'altercation/vim-colors-solarized'
" We want the freshest vim-ruby, not the shipped default
NeoBundle 'vim-ruby/vim-ruby'
" RVM, Bundler and Rails
NeoBundle 'tpope/vim-rvm'
NeoBundle 'tpope/vim-bundler'
NeoBundle 'tpope/vim-rails'
" Async build and test dispatcher
" NeoBundle 'tpope/vim-dispatch'
" Git integration
NeoBundle 'tpope/vim-fugitive'
" Slim template language
NeoBundle 'slim-template/vim-slim.git'

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

"set ruler
"set cursorline

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

if has("gui_running")
   " Color scheme
   set background=dark
   colorscheme solarized
   "let g:solarized_termtrans = 1

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

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

