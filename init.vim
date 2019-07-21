let mapleader = ","

source ./plugins.vim

source ./helpers.vim

source ./configure_emacs.vim

source ./configure_terminal.vim

source ./configure_rust.vim

source ./configure_fzf.vim

" Auto switch to directory of edited file like emacs
set autochdir

" Relative line numbering by default
set relativenumber

" Close the current file but keep the split/window open
map <leader>q :bp<bar>sp<bar>bn<bar>bd<CR>

" Undo
" Instruct vim to save 1000 undo items in a persistent undo file.
" We also want each undo file to be stored in the same directory.
set undolevels=1000
set undofile
set undodir=./undodir

" challenger is a nice theme
colorscheme challenger_deep
 
" If possible, we'd like to have mouse support
if has("mouse")
   set mouse=a
 endif

