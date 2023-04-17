local utils = require("darkrose.utils")

local M = {}

function M.setup(options)
  require("darkrose.config").setup(options)
end

function M.colorscheme()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.opt.termguicolors = true
  vim.g.colors_name = "darkrose"

  utils.apply_highlights()
end

return M
