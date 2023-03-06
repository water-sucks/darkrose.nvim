local utils = require("darkrose.utils")

local M = {}

M.apply_highlights = function(options)
  local colors = require("darkrose.colors").get()

  _G._C = C
  _G._O = O
  _G._U = U
  _G.O = options
  _G.C = colors
  _G.U = utils

  local theme = require("darkrose.groups.base")
  theme = vim.tbl_deep_extend("force", theme, require("darkrose.groups.syntax"))
  require("darkrose.groups.terminal")

  local plugins = options.plugins

  for plugin in pairs(plugins) do
    local cot = false
    if type(plugins[plugin]) == "table" then
      if plugins[plugin]["enabled"] == true then
        cot = true
      end
    else
      if plugins[plugin] == true then
        cot = true
      end
    end

    if cot then
      local mod = require("darkrose.groups.plugins." .. plugin)
      if type(mod) == "function" then
        theme = vim.tbl_deep_extend("force", theme, mod())
      else
        theme = vim.tbl_deep_extend("force", theme, mod)
      end
    end
  end

  if type(options.overrides) == "function" then
    theme = vim.tbl_deep_extend("force", theme, options.overrides(colors))
  end

  _G.C = _G._C
  _G.O = _G._O
  _G.U = _G._U

  for name, highlight in pairs(theme) do
    utils.highlight(name, highlight)
  end
end

return M
