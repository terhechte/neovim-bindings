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
