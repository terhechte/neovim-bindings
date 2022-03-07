source ~/.config/nvim/plug.vim

call plug#begin('~/.config/nvim/plugins')

" Rust
" Plug 'w0rp/ale'
" Plug 'rust-lang/rust.vim', { 'for': 'rust' }
"
" It seems, with coc, vim-racer is not needed
" Plug 'racer-rust/vim-racer', { 'for': 'rust' }
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Challenger theme has nice colors
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }

" Choosewin allows quick window navigation
Plug 't9md/vim-choosewin'

" fzf for finding files and searching files in repositories (and more)
"Plug '/usr/local/opt/fzf'
"Plug 'junegunn/fzf.vim'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Collection of common configurations for the Nvim LSP client
Plug 'neovim/nvim-lspconfig'

" Completion framework
Plug 'hrsh7th/nvim-cmp'

" LSP completion source for nvim-cmp
Plug 'hrsh7th/cmp-nvim-lsp'

" Snippet completion source for nvim-cmp
Plug 'hrsh7th/cmp-vsnip'

" Other usefull completion sources
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-buffer'

" See hrsh7th's other plugins for more completion sources!

" To enable more of the features of rust-analyzer, such as inlay hints and more!
Plug 'simrat39/rust-tools.nvim'

" Snippet engine
Plug 'hrsh7th/vim-vsnip'

call plug#end()

nmap - <Plug>(choosewin)

let g:choosewin_overlay_enable = 0
let g:choosewin_statusline_replace = 1


