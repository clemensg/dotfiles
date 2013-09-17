" Runtimepath manager
call pathogen#infect()

syntax on
filetype plugin indent on

" 4 spaces instead of tab
set sw=4 sts=4 et

if has('gui_running')
    set gcr=n:blinkon0
    set lines=30
    " Show the cursor line and column number
    set ruler
    " Colors
    set background=light
    colorscheme solarized
    " Font
    set guifont=Source_Code_Pro:h16
endif
