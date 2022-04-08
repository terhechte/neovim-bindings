" Some of the menu items should only be available in javascript files
" By default numbers are not bound, but we we want to bind numbers too
let g:conmenu#available_bindings = '1234567890wertyuiopasdfghlzxcvbnm'
"let s:javascriptTypes = ['typescriptreact', 'typescript', 'javascript', 'javascript.jsx', 'json', 'rust', 'rs']
let s:rustTypes = ['rust', 'rs']

let g:conmenu#default_menu = [
\['  Code Actions', [
  \['  Rename', ":lua require('cosmic-ui').rename()"],
  \['  Code Actions', ":CodeActionMenu"],
  \['  Definition', ":lua vim.lsp.buf.definition()"],
  \['  Declaration', ":lua vim.lsp.buf.declaration()"],
  \['  Type Definition', ":lua vim.lsp.buf.type_definition()"],
  \['  Implementation', ":lua vim.lsp.buf.implementation()"],
  \['  References', ":lua vim.lsp.buf.references()"],
  \], { 'onlyTypes': s:rustTypes }],
\['  Code Diagnostics',[
  \['  Document Diagnostics', ':TroubleToggle document_diagnostics'],
  \['  Workspace Diagnostics', ':TroubleToggle workspace_diagnostics'],
  \], { 'onlyTypes': s:rustTypes }],
\['  Navigate', [
  \['﬘  File Tree', ':NvimTreeToggle'],
  \['  Fuzzy Files', ':Telescope git_files'],
  \['  Buffers', ':Telescope buffers'],
  \['  Commands', ':Telescope commands'],
  \['  Marks', ':Telescope marks' ],
  \['﬍  Todos', ':TodoTelescope'],
  \['﬘  Find in File Tree', ':NvimTreeFindFile'],
  \['  Find Selection', ':lua make_selection()'],
  \]],
\['  Utils', [
  \['  Git', ':Neogit', { 'filter': 'IsInGitWorktree' }],
  \['  Terminal', ':ToggleTerm'],
  \['  Rust Runnables', ':require("rust-tools.runnables").runnables()'],
  \['  Open Docs', ':silent exec "cargo doc --open"'],
  \['  Github Link to Line', ':lua require"gitlinker".get_buf_range_url("n")', { 'filter': 'IsInGitWorktree' }],
  \['────────────────────────────'],
  \['  Delete All Marks', ':delmarks A-Z0-9a-z'],
  \['  Configs', [
    \[' neovim', ':e ~/.config/nvim/init.vim'],
    \[' fish', ':e ~/.config/fish/init.fish'],
    \]],
  \['────────────────────────────'],
  \['  Buffer in Finder', ':silent exec "!open %:p:h"'],
  \['  Project in Finder', ':silent exec "!open $(pwd)"'],
  \]],
\['﬘  Buffers', [
  \['﬘  Show All', ':Buffers'],
  \['﬘  Close All', ':silent bufdo BD!'],
  \]],
\['  Git', [
  \['NeoGit', ':Neogit'],
  \['Status', ':Git'],
  \['Blame', ':Git blame'],
  \['Why', ':GitMessenger'],
  \['────────────────────────────'],
  \['Create Worktree', ":lua require('conmenu').createWorktree()"],
  \['Select Worktree', ":lua require('conmenu').selectWorktree()"],
  \['Remove Worktree', ":lua require('conmenu').removeWorktree()"],
  \], { 'filter': 'IsInGitWorktree' }],
\]
