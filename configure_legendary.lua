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
    -- rename file is mapped to <leader>rn ??
    -- get github link for current location file is mapped to <leader>gy
    { '<leader>g', ':Neogit<CR>', description = 'Open Neogit', opts = {} },
    { '<leader>s', ':wa<CR>', description = 'Write all buffers', opts = {} },
    { '<leader>f', vim.lsp.buf.formatting_sync, description = 'Format buffer with LSP' },
    { '<leader>m', ':ConMenu<CR>', description = 'Show the option menu' },
    { '<leader>pd', require('goto-preview').goto_preview_definition(), description = 'Preview Definition' },
    { '<leader>pr', require('goto-preview').goto_preview_references(), description = 'Preview References' },
    { '<leader>pi', require('goto-preview').goto_preview_implementation(), description = 'Preview Implementation' },
    { '<leader>ff', ':Telescope git_files<CR>', description = 'Search Git Files' },
    { '<leader>fg', ':Telescope live_grep<CR>', description = 'Grep Files' },
    { '<leader>fb', ':Telescope buffers<CR>', description = 'Search Buffers' },
    { '<leader>fc', ':Telescope commands<CR>', description = 'Search commands' },
    { '<leader>flr', ':lua vim.lsp.buf.references()<CR>', description = 'Search references' },
    { '<leader>fli', ':lua vim.lsp.buf.implementation()<CR>', description = 'Go to implementation' },
    { '<leader>fld', ':lua vim.lsp.buf.definition()<CR>', description = 'Go to definition' },
    { '<leader>flt', ':lua vim.lsp.buf.type_definition()<CR>', description = 'Go to type definition' },
    { '<leader>fhc', ':Telescope command_history<CR>', description = 'Search command history' },
    { '<leader>fhs', ':Telescope search_history<CR>', description = 'Search search history' },
    { '<leader>fs', ':Telescope<CR>', description = 'Search Telescope' },
    { '<leader>ft', ':TodoTelescope<CR>', description = 'Find Todos in Project' },
    { '<leader>ca', ':CodeActionMenu<CR>', description = 'Show Code Actions' },
    { '<leader>tt', ':NvimTreeToggle<CR>', description = 'Toggle File Tree' },
    { '<leader>tt', ':NvimTreeFindFile<CR>', description = 'Find in File Tree' },
    { '<leader>xt', ':ToggleTerm<CR>', description = 'Toggle Terminal at bottom' },
    { '<leader>x2', ':ToggleTerm 2<CR>', description = 'Toggle second Terminal at bottom' },
    { '<leader>x3', ':ToggleTerm 3<CR>', description = 'Toggle third Terminal at bottom' },
    { '<leader>dx', ':TroubleToggle<CR>', description = 'Toggle Diagnostics' },
    { '<leader>dw', ':TroubleToggle workspace_diagnostics<CR>', description = 'Toggle Workspace Diagnostics' },
    { '<leader>dd', ':TroubleToggle document_diagnostics<CR>', description = 'Toggle Document Diagnostics' },
    { '<leader>rn', ':RustCodeAction<CR>', description = 'Run Rust Code Action' },
    { '<leader>xq', ':cclose<CR>', description = 'Close quickfix list' },
    --{ '<leader>gn', require("cosmic-ui").rename(), description = 'Rename' },
    --{ '<leader>ga', require("cosmic-ui").code_actions(), description = ' Code Actions' },
    --{ '<leader>gb', require("cosmic-ui").range_code_actions(), description = 'Range Code Actions' },
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
