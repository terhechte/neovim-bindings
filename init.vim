" if has("mouse")
"   set mouse=a
" endif
"
source ~/.config/nvim/plugins.vim

source ~/.config/nvim/emacs.vim

source ~/.config/nvim/terminal.vim

source ~/.config/nvim/rust.vim

" Auto switch to directory of edited file like emacs
set autochdir

color default 

set relativenumber

let mapleader = ","
map <leader>nt tabn

" Close the current file but keep the split open
map <leader>q :bp<bar>sp<bar>bn<bar>bd<CR>


" UNDO
" Instruct vim to save 1000 undo items in a persistent undo file.
" We also want each undo file to be stored in the same directory.
set undolevels=1000
set undofile
set undodir=~/.config/nvim/undodir

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
