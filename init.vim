let mapleader = ","

" Create backup directories if they don't exist yet
if !isdirectory(resolve(expand("~/.config/nvim/.tmp")))
    call mkdir(resolve(expand("~/.config/nvim/.tmp/backup", "p")))
    call mkdir(resolve(expand("~/.config/nvim/.tmp/undodir", "p")))
    call mkdir(resolve(expand("~/.config/nvim/.tmp/swap", "p")))
endif

set termguicolors

" Load plugins
source ~/.config/nvim/plugins.vim
" Does another package manager work?
luafile ~/.config/nvim/plugins.lua
" Helper Scripts
source ~/.config/nvim/helpers.vim
" Configure Emacs keybindings
source ~/.config/nvim/configure_emacs.vim
" Configure the terminal emulator
source ~/.config/nvim/configure_terminal.vim
" Configure fzf
"source ~/.config/nvim/configure_fzf.vim
" Configure Rust
source ~/.config/nvim/rust.vim
" Configure telescope
source ~/.config/nvim/configure_telescope.vim
" Configure legendary
luafile ~/.config/nvim/configure_legendary.lua
" Configure matchup to use treesitter
luafile ~/.config/nvim/configure_matchup.lua
" NerdTree defaults
luafile ~/.config/nvim/configure_nerdtree.lua
" Neoscroll
"lua require('neoscroll').setup()

lua require("bufferline").setup{}

" lua require('feline').setup()
luafile ~/.config/nvim/configure_lualine.lua

lua require('nvim-autopairs').setup{}

lua require("toggleterm").setup{}

lua require"gitlinker".setup()

source ~/.config/nvim/custom_conmenu.vim

luafile ~/.config/nvim/configure_gitsigns.lua

" Shade doesn't work in neovide. disable for now
" luafile ~/.config/nvim/configure_shade.lua

" Remember last edit place on save
luafile ~/.config/nvim/configure_lastplace.lua

" Does this work?
luafile ~/.config/nvim/configure_cosmic.lua

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

" Store all temporary files in one hidden directory
set undodir=~/.config/nvim/.tmp/undodir "undo
set backupdir=~/.config/nvim/.tmp/backup "backup file
set directory=~/.config/nvim/.tmp/swap "swap files

" Convenience for sessions
" map <leader>S :mks ~/.config/nvim/sessions/

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Show lightbulb for code actions
autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()

" Guifont
set guifont=Lekton\ Nerd\ Font\ Mono:h12


" colorscheme aurora
let g:tokyonight_style = "night"
let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]
colorscheme tokyonight


luafile ~/.config/nvim/lua_init.lua

" Move somewhere, document
nnoremap gpd <cmd>lua require('goto-preview').goto_preview_definition()<CR>
nnoremap gpi <cmd>lua require('goto-preview').goto_preview_implementation()<CR>
nnoremap gP <cmd>lua require('goto-preview').close_all_win()<CR>
" Only set if you have telescope installed
nnoremap gpr <cmd>lua require('goto-preview').goto_preview_references()<CR>

" For the custom menu
" Map <leader>m to open default menu.
noremap <silent> <leader>m :ConMenu<CR>


" Use ,c to copy to the macos clipboard
noremap <leader>c "+y<CR>gv

 
" If possible, we'd like to have mouse support
if has("mouse")
   set mouse=a
 endif
