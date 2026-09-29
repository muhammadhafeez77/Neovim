set clipboard=unnamedplus

filetype plugin indent on
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set number
set relativenumber
set smartindent
set showmatch
set backspace=indent,eol,start
syntax on

if (&term == "xterm") || (&term == "putty")
  set background=dark
endif

