local M = {}

M.options = {
  colors = {},
  overrides = function(_) end,
  styles = {
    bold = true,
    italic = true,
    underline = true,
  },
}

M.setup = function(options)
  M.options = vim.tbl_deep_extend("force", {}, M.options, options or {})
end

M.setup()

return M
