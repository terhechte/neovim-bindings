I usually use vim / neovim on the commandline for quick edit jobs.
What I miss the most is support for Emacs movement commands in VIM insert mode.
That's what you get here. 

# Installation

Install plugins via

`:PlugInstall`

# 

# Rust
If wanting to use rust projects, run this after all plugins are installed:
:CocInstall coc-rls

# Searching
- Requires fzf and ripgrep:

```
brew install ripgrep
brew install fzf
```
,f => search for file in repo directories
,s => search in files in repo directories
FIMXE: search only in specific file types
