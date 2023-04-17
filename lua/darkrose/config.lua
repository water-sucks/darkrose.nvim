local M = {}

local defaults = {
  colors = {},
  overrides = function() end,
}

M.options = {}

M.setup = function(options)
  M.options = vim.tbl_deep_extend("force", {}, defaults, options or {})
end

M.setup()

return M
