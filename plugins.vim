source ~/.config/nvim/plug.vim

call plug#begin('~/.config/nvim/plugins')

" Rust
Plug 'w0rp/ale'
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
" Plug 'racer-rust/vim-racer', { 'for': 'rust' }

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 't9md/vim-choosewin'
nmap - <Plug>(choosewin)

let g:choosewin_overlay_enable = 0
let g:choosewin_statusline_replace = 1
call plug#end()
