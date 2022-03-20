" sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
"       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

call plug#begin('~/.config/nvim/plugins')

" Rust
" Plug 'w0rp/ale'
" Plug 'rust-lang/rust.vim', { 'for': 'rust' }
"
" It seems, with coc, vim-racer is not needed
" Plug 'racer-rust/vim-racer', { 'for': 'rust' }
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Challenger theme has nice colors
" Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'ray-x/aurora'

" Choosewin allows quick window navigation
Plug 't9md/vim-choosewin'

" fzf for finding files and searching files in repositories (and more)
"Plug '/usr/local/opt/fzf'
"Plug 'junegunn/fzf.vim'

Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope.nvim'

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

" Better Shortcuts
Plug 'mrjones2014/legendary.nvim'

" Replace the common modal vim elements with nicer ones
Plug 'stevearc/dressing.nvim'

" Code Actions
Plug 'weilbith/nvim-code-action-menu'

" Show the VSCode lightbulb for code Actions
Plug 'kosayoda/nvim-lightbulb'

" Automatically rename html tags
Plug 'AndrewRadev/tagalong.vim'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Allow using '%' for all kinds of blocks
Plug 'andymass/vim-matchup'

" Show tree-sitter context for the current function / class / struct
"Plug 'nvim-treesitter/nvim-treesitter'
"Plug 'romgrk/nvim-treesitter-context'
Plug 'SmiteshP/nvim-gps'

" File Tree
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

" See the contents of registers via `:Registers`
Plug 'tversteeg/registers.nvim', { 'branch': 'main' }

" Smooth Scrolling
Plug 'karb94/neoscroll.nvim'

" Scroll Bars
Plug 'dstein64/nvim-scrollview', { 'branch': 'main' }

" Sessions
Plug 'Shatur/neovim-session-manager'

" See all todos and so on in the code
Plug 'folke/todo-comments.nvim'

" Buffers on top (not tabs!)
Plug 'akinsho/bufferline.nvim'

" Statusbar
" Plug 'feline-nvim/feline.nvim', { 'branch': 'develop' }
Plug 'nvim-lualine/lualine.nvim'

" tokyonight coloorscheme
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

" Autopairs
Plug 'windwp/nvim-autopairs'

" Git Signs
Plug 'lewis6991/gitsigns.nvim'

" Shade inactive splits (e.g. less opacity)
Plug 'sunjon/shade.nvim'

" Highlight all words with the same name as the one under the cursor
Plug 'yamatsum/nvim-cursorline'

" Reopen files at the last edit position
Plug 'ethanholz/nvim-lastplace'

Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

Plug 'akinsho/toggleterm.nvim'

" Generate git links
Plug 'ruifm/gitlinker.nvim'

" Magit! ;)
Plug 'TimUntersberger/neogit'

" Support custom menus
Plug 'meznaric/conmenu'

" VSCode like renaming UI
" doesn't work
" Plug 'filipdutescu/renamer.nvim', { 'branch': 'master' }


call plug#end()

nmap - <Plug>(choosewin)

let g:choosewin_overlay_enable = 0
let g:choosewin_statusline_replace = 1


