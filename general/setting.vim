filetype indent plugin on
set wrap
set sw=2
set ts=2
set iskeyword+=:
set nu
set nocompatible
set enc=utf-8
set rnu
set smarttab
set expandtab
set laststatus=2
set hidden
set mouse=a
set splitbelow
set splitright
set cursorline
set nobackup
set nowritebackup
set linebreak
set cmdheight=2
set updatetime=300
set shortmess+=c
set clipboard+=unnamed
set t_Co=256
set bg=dark
set termguicolors 
"folding
set fdm=indent

"augroup folding_javascript
    "au!
    "au FileType javascript,css setlocal fdm=syntax
    "au FileType go setlocal fdm=manual
"augroup END

