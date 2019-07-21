source ~/.config/nvim/plug.vim

call plug#begin('~/.config/nvim/plugins')

" Rust
Plug 'w0rp/ale'
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
" Plug 'racer-rust/vim-racer', { 'for': 'rust' }

Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 't9md/vim-choosewin'

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" Plug 'philip-karlsson/aerojump.nvim', { 'do': ':UpdateRemotePlugins' }
call plug#end()

nmap - <Plug>(choosewin)

" nmap <Leader>as <Plug>(AerojumpSpace)
" nmap <Leader>ab <Plug>(AerojumpBolt)
" nmap <Leader>aa <Plug>(AerojumpFromCursorBolt)
" nmap <Leader>ad <Plug>(AerojumpDefault) " Boring mode

let g:choosewin_overlay_enable = 0
let g:choosewin_statusline_replace = 1


