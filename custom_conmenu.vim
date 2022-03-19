" Some of the menu items should only be available in javascript files
" By default numbers are not bound, but we we want to bind numbers too
let g:conmenu#available_bindings = '1234567890wertyuiopasdfghlzxcvbnm'
let s:javascriptTypes = ['typescriptreact', 'typescript', 'javascript', 'javascript.jsx', 'json', 'rust']

let g:conmenu#default_menu = [
\['  Code Actions', [
  \['  Rename', ":call CocActionAsync('rename')"],
  \['  Fix', ':CocFix'],
  \['  Cursor', ":call CocActionAsync('codeAction', 'cursor')"],
  \['  Refactor', ":call CocActionAsync('refactor')"],
  \['  Selection', "execute 'normal gv' | call CocActionAsync('codeAction', visualmode())"],
  \['  Definition', ":call CocActionAsync('jumpDefinition')"],
  \['  Declaration', ":call CocActionAsync('jumpDeclaration')"],
  \['  Type Definition', ":call CocActionAsync('jumpTypeDefinition')"],
  \['  Implementation', ":call CocActionAsync('jumpImplementation')"],
  \['  References', ":call CocActionAsync('jumpReferences')"],
  \['  Usages', ":call CocActionAsync('jumpUsed')"],
  \['  Test Nearest', ':TestNearest'],
  \['﬍  File Outline', ':CocOutline'],
  \['   Format File', ':PrettierAsync'],
  \['   UnMinify JS', ':call UnMinify()'],
  \['   Organise Imports', ":call CocAction('organizeImport')"],
  \], { 'onlyTypes': s:javascriptTypes }],
\['  Code Diagnostics',[
  \['  List Diagnostics', ':CocList diagnostics'],
  \['  Previous', ":call CocActionAsync('diagnosticPrevious')"],
  \['  Next', ":call CocActionAsync('diagnosticNext')"],
  \['  Info', ":call CocActionAsync('diagnosticInfo')"]
  \], { 'onlyTypes': s:javascriptTypes }],
\['  Scripts', ":lua require('conmenu').fromNpm()",
  \{ 'filter': 'IsInNodeProject' }],
\['  Lerna Projects', ":lua require('conmenu').fromLerna()",
  \{ 'filter': 'IsInNodeProject' }],
\['────────────────────────────', v:null, { 'onlyTypes': s:javascriptTypes}],
\['  Navigate', [
  \['  Fuzzy', ':Files'],
  \['  Recent Files', ':CtrlPMRUFiles'],
  \['  Mixed', ':CtrlPMixed'],
  \['  Marks', ':Marks' ],
  \['────────────────────────────'],
  \['﬍  Explorer', ':CocCommand explorer'],
  \['﬍  Highlight in Explorer', ':CocCommand explorer --reveal'],
  \['  Lines in file', ':CocList outline'],
  \]],
\['  Utils', [
  \['  Git', ':call ToggleTerm("lazygit")', { 'filter': 'IsInGitWorktree' }],
  \['  Docker', ':call ToggleTerm("lazydocker")'],
  \['  Databases', ':DBUI'],
  \['  Terminal', ':terminal'],
  \['  Dev Docs', ":call devdocs#open(expand('<cword>'))"],
  \['  Help', ':call ShowDocumentation()'],
  \['────────────────────────────'],
  \['  Delete All Marks', ':delmarks A-Z0-9a-z'],
  \['  Configs', [
    \[' neovim', ':e ~/.config/nvim/init.vim'],
    \[' zsh', ':e ~/.zshrc'],
    \[' coc.nvim', ':CocConfig'],
    \]],
  \['────────────────────────────'],
  \['  Buffer in Finder', ':silent exec "!open %:p:h"'],
  \['  Project in Finder', ':silent exec "!open $(pwd)"'],
  \['פּ  TreeSitter Playground', ':TSPlaygroundToggle'],
  \]],
\['﬘  Buffers', [
  \['﬘  Show All', ':Buffers'],
  \['﬘  Close All', ':silent bufdo BD!'],
  \]],
\['  Git', [
  \['Status', ':Git'],
  \['Blame', ':Git blame'],
  \['Why', ':GitMessenger'],
  \['────────────────────────────'],
  \['Create Worktree', ":lua require('conmenu').createWorktree()"],
  \['Select Worktree', ":lua require('conmenu').selectWorktree()"],
  \['Remove Worktree', ":lua require('conmenu').removeWorktree()"],
  \], { 'filter': 'IsInGitWorktree' }],
\]
