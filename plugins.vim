source ~/.config/nvim/plug.vim

call plug#begin('~/.config/nvim/plugins')

" Rust
Plug 'w0rp/ale'
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
" Plug 'racer-rust/vim-racer', { 'for': 'rust' }

Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
