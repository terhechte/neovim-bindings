This is a bare bones `neovim` config for somebody who used to use spacemacs but came back to vim because 
- it was much faster on a Mac with a huge retina screen
- I'm spending most of my time in terminal anyway
- I like the terminal multiplexer in neovim better than `ansi-term` in emacs

I've used emacs since 2011, however. This means that I got used to a couple of emacs behaviours. 
This minimal config resembles that. Most notably, in insert mode, the emacs movement keys work 
just fine:

Control-n for next lin, Control-p for previous line, etc. see `configure_emacs.vim` for details.

Apart from that, this config is mostly optimized for Rust and normal text file editing.

# Installation

Install plugins via

`:PlugInstall`
Then restart.

# Coc/Node
coc (completions for lots of things) requires node. so..

`brew install nodejs`

# General

- `,S` => Session dialog for storing the current session. Load via `nvim -S name-of-sessions.vim`

# Rust

If wanting to use rust projects, run this after all plugins are installed:
:CocInstall coc-rls

- use tab for completions
- use enter to use completion
- `gd` to go to definition
- `gr` for references

# Searching
Requires fzf and ripgrep:

```
brew install ripgrep
brew install fzf
```

,f => search for file in repo directories
,s => search in files in repo directories
FIMXE: search only in specific file types


# Updates

Missing:

- x Show errors in status bar and not just behind (for long errors)
- x jump to next error / warning
- x git integration
- add some of the actions to the searchable menu
- add the custom menu thing for actions
- switch everything over to packer?
- probably change to that other status bar? Or at least configure so that inactive also as the filename
- https://github.com/folke/tokyonight.nvim or color blind scheme
- x https://github.com/TimUntersberger/neogit
- Can't get this to work https://github.com/AckslD/nvim-neoclip.lua
- Consider moving to https://github.com/rmagatti/auto-session
- Switch to https://github.com/nvim-lualine/lualine.nvim
- Switch to https://github.com/feline-nvim/feline.nvim
- Copy paste macos https://github.com/neovide/neovide/issues/113
- The setups at the bottom of this file
- https://github.com/simrat39/symbols-outline.nvim
- document telescope: https://github.com/nvim-telescope/telescope.nvim


---


https://github.com/weilbith/nvim-code-action-menu
:CodeActionMenu
=> code refactoring, actions, etc where I saw

https://github.com/AndrewRadev/tagalong.vim
=> Will automatically replace closing html tags when the head tags are renamed


Treesitter:
https://github.com/nvim-treesitter/nvim-treesitter

https://github.com/andymass/vim-matchup
Matches `%` for everything

https://github.com/romgrk/nvim-treesitter-context
Display Treesitter context (files, etc)
Note to work for Rust, I might need to set up context function (see website)
:TSContextEnable, :TSContextDisable and :TSContextToggle.
UPDATE
https://github.com/SmiteshP/nvim-gps
This does the same but looks much better

https://github.com/kyazdani42/nvim-tree.lua
:NvimTreeToggle
:NvimTreeFindFile

https://github.com/tversteeg/registers.nvim
See the contents of registers
:Registers
Press " in normal or visual mode
Press CtrlR in insert mode

Scrollbars
https://github.com/dstein64/nvim-scrollview
The :ScrollViewDisable command disables scrollbars.
The :ScrollViewEnable command enables scrollbars. This is only necessary if scrollbars have previously been disabled.
The :ScrollViewRefresh command refreshes the scrollbars. This is relevant when the scrollbars are out-of-sync, which can occur as a result of some window arrangement actions.


https://github.com/Shatur/neovim-session-manager
# Save the current session
:SessionManager save_current_session
Load one of the last sessions
:SessionManager load_session

https://github.com/folke/todo-comments.nvim
:TodoTelescope
See all todos

https://github.com/akinsho/bufferline.nvim
Tabbar for buffers. Not sure if I need this. Lots of documentation and commands
In the website

https://github.com/lewis6991/gitsigns.nvim
Gitsigns comes with a lot of configuration. Should move this to one of the
Menubar plugins I saw

https://github.com/filipdutescu/renamer.nvim
Rename symbols:
<leader>rn

Switched to this rename plugin, this at least works
https://github.com/CosmicNvim/cosmic-ui


https://github.com/akinsho/toggleterm.nvim
:ToggleTerm => show / hide terminal
:ToggleTerm 2 => open a 2nd stacked terminal
More docs on site, in particu


Goto preview:
nnoremap gpd <cmd>lua require('goto-preview').goto_preview_definition()<CR>
nnoremap gpi <cmd>lua require('goto-preview').goto_preview_implementation()<CR>
nnoremap gP <cmd>lua require('goto-preview').close_all_win()<CR>
" Only set if you have telescope installed
nnoremap gpr <cmd>lua require('goto-preview').goto_preview_references()<CR>

https://github.com/rmagatti/goto-preview
(The commands don't all work. Yet)

https://github.com/ruifm/gitlinker.nvim
Copy GitHub link for the current line or range
<leader>gy for normal and visual mode


Git
:Neogit

Custom Menus:(Still need to be set up)
leader m
Docs: https://github.com/meznaric/conmenu


Legendary:
Still needs to be set up
https://github.com/mrjones2014/legendary.nvim


# Open Questions

- [ ] how do I see all the errors in the project
- [x] how do I rename
- [x] see all references
- [x] search for item
- [x] see implementations
- [x] format on save
- [x] list of all symbols, properly sorted
- [ ] cargo integration
- [ ] toml integration
- [ ] docs.rs integration
- [x] ctrl e / ctrl a after a completion pop is open
- [x] do a git grep / rg / telescope for the currently selected text
- [ ] get docs for hover / selection
- [ ] learn all the leader commands and maybe rename some
