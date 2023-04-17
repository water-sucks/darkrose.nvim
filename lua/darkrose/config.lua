local M = {}

M.options = {
  colors = {},
  overrides = function() end,
}

M.setup = function(options)
  M.options = vim.tbl_deep_extend("force", {}, M.options, options or {})
end

M.setup()

return M
