" # Generated by script. Don't change it manually!

call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm ci'}

call plug#end()

if filereadable("$HOME/.vimrc")
    so $HOME/.vimrc
endif