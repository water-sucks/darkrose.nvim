local utils = require("darkrose.utils")

local M = {}

M.apply_highlights = function(options)
  local colors = require("darkrose.colors").get()

  local theme = require("darkrose.theme").generate()

  -- Apply overrides to colors
  theme.highlights = vim.tbl_deep_extend("force", theme.highlights, options.overrides(colors) or {})

  for name, highlight in pairs(theme.highlights) do
    utils.highlight(name, highlight)
  end

  for prop, color in pairs(theme.terminal) do
    vim.api.nvim_set_var(prop, color)
  end
end

return M
