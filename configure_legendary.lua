require('legendary').setup({
  -- Include builtins by default, set to false to disable
  include_builtin = true,
  -- Customize the prompt that appears on your vim.ui.select() handler
  select_prompt = 'Legendary',
  -- Initial keymaps to bind
  keymaps = {
    -- Legendary itself is mapped to `<leader>e`
    -- copy to macos clipboard itself is mapped to `<leader>c`
    -- close buffer is mapped to <leader>q
    -- get github link for current location file is mapped to <leader>gy
    -- ,fi = search for the currently selected text
    { '<leader>g', ':Neogit<CR>', description = 'Open Neogit', opts = {} },
    { '<leader>s', ':wa<CR>', description = 'Write all buffers', opts = {} },
    { '<leader>m', ':ConMenu<CR>', description = 'Show the option menu' },
    { '<leader>pd', require('goto-preview').goto_preview_definition(), description = 'Preview Definition' },
    { '<leader>pr', require('goto-preview').goto_preview_references(), description = 'Preview References' },
    { '<leader>pi', require('goto-preview').goto_preview_implementation(), description = 'Preview Implementation' },
    { '<leader>ff', ':Telescope git_files<CR>', description = 'Search Git Files' },
    { '<leader>fg', ':Telescope live_grep<CR>', description = 'Grep Files' },
    { '<leader>fb', ':Telescope buffers<CR>', description = 'Search Buffers' },
    { '<leader>fc', ':Telescope commands<CR>', description = 'Search commands' },
    { '<leader>fw', ':Telescope lsp_workspace_symbols<CR>', description = 'Search workspace symbols' },
    { '<leader>fs', ':lua make_selection()<CR>', description = 'Search selection' },
    { '<leader>fg', ':Telescope commits<CR>', description = 'Search git commits' },
    { '<leader>flr', ':lua vim.lsp.buf.references()<CR>', description = 'Search references' },
    { '<leader>fli', ':lua vim.lsp.buf.implementation()<CR>', description = 'Go to implementation' },
    { '<leader>fld', ':lua vim.lsp.buf.definition()<CR>', description = 'Go to definition' },
    { '<leader>flt', ':lua vim.lsp.buf.type_definition()<CR>', description = 'Go to type definition' },
    { '<leader>fhc', ':Telescope command_history<CR>', description = 'Search command history' },
    { '<leader>fhs', ':Telescope search_history<CR>', description = 'Search search history' },
    { '<leader>fs', ':Telescope<CR>', description = 'Search Telescope' },
    { '<leader>ff', ':Telescope files<CR>', description = 'Search Files in Git' },
    { '<leader>ft', ':TodoTelescope<CR>', description = 'Find Todos in Project' },
    { '<leader>ca', ':CodeActionMenu<CR>', description = 'Show Code Actions' },
    { '<leader>tt', ':NvimTreeToggle<CR>', description = 'Toggle File Tree' },
    { '<leader>tf', ':NvimTreeFindFile<CR>', description = 'Find in File Tree' },
    { '<leader>ts', ':SymbolsOutline<CR>', description = 'Toggle Symbols Outline' },
    { '<leader>xt', ':ToggleTerm<CR>', description = 'Toggle Terminal at bottom' },
    { '<leader>x2', ':ToggleTerm 2<CR>', description = 'Toggle second Terminal at bottom' },
    { '<leader>x3', ':ToggleTerm 3<CR>', description = 'Toggle third Terminal at bottom' },
    { '<leader>dx', ':TroubleToggle<CR>', description = 'Toggle Diagnostics / Errors / Warnings' },
    { '<leader>dw', ':TroubleToggle workspace_diagnostics<CR>', description = 'Toggle Workspace Diagnostics / Errors / Warnings' },
    { '<leader>dd', ':TroubleToggle document_diagnostics<CR>', description = 'Toggle Document Diagnostics / Errors / Warnings' },
    { '<leader>rn', ':RustCodeAction<CR>', description = 'Rust Code Actions' },
    { '<leader>rr', ':require("rust-tools.runnables").runnables()<CR>', description = 'Cargo Runnables' },
    { '<leader>xq', ':cclose<CR>', description = 'Close quickfix list' },
    { '<leader>gn', ':lua require("cosmic-ui").rename()<CR>', description = 'Rename' },
    { '<leader>ga', ':lua require("cosmic-ui").code_actions()<CR>', description = ' Code Actions' },
    { '<leader>gb', ':lua require("cosmic-ui").range_code_actions()<CR>', description = 'Range Code Actions' },
    { '<leader>gy', ':lua require"gitlinker".get_buf_range_url("n")<CR>', description = 'Copy Github link to line' },
  },
  -- Initial commands to bind
  commands = {
    -- your command tables here
  },
  -- Initial augroups and autocmds to bind
  autocmds = {
    -- your autocmd tables here
  },
  -- Automatically add which-key tables to legendary
  -- see "which-key.nvim Integration" below for more details
  auto_register_which_key = true,
})
