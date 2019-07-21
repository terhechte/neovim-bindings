source ~/.config/nvim/plug.vim

call plug#begin('~/.config/nvim/plugins')

" Rust
Plug 'w0rp/ale'
Plug 'rust-lang/rust.vim', { 'for': 'rust' }

" It seems, with coc, vim-racer is not needed
" Plug 'racer-rust/vim-racer', { 'for': 'rust' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Challenger theme has nice colors
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }

" Choosewin allows quick window navigation
Plug 't9md/vim-choosewin'

" fzf for finding files and searching files in repositories (and more)
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

call plug#end()

nmap - <Plug>(choosewin)

let g:choosewin_overlay_enable = 0
let g:choosewin_statusline_replace = 1


