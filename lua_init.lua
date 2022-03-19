-- Show LSP errors in hover
vim.cmd [[autocmd CursorHold * lua vim.diagnostic.open_float(nil,{focusable=false,scope="cursor"})]]

-- Enable Neogit
local neogit = require('neogit')
neogit.setup {}
