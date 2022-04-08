local function visual_selection_range()
  local _, csrow, cscol, _ = unpack(vim.fn.getpos("'<"))
  local _, cerow, cecol, _ = unpack(vim.fn.getpos("'>"))
  if csrow < cerow or (csrow == cerow and cscol <= cecol) then
    return csrow - 1, cscol - 1, cerow - 1, cecol
  else
    return cerow - 1, cecol - 1, csrow - 1, cscol
  end
end

function make_selection()
  local a, b, c, d = visual_selection_range()

  local content = vim.api.nvim_buf_get_text(0, a, b, c, d, {})
  require("telescope.builtin").grep_string({search=content[0]})
end

