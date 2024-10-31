local red = "#4A90E2"
local dark_red = "#003366"
local light_red = "#5DADE2"
local orange = "#1f618d"
local light_orange = "#3498DB"
local dark_purple = "#1B2631"
local magenta = "#2874A6"
local dark_pink = "#5499C7"
local pink = "#85C1E9"
local light_pink = "#AED6F1"
local gray = "#8B8B8B"

local bg = "#333949"
local bg_float = "#434959"
local bg_float_bright = "#556162"
local fg = "#C1C1d9"
local fg_gutter = "#8A95A2"
local fg_dark = "#4D5566"

local M = {}

local colors = {
  red = red,
  dark_red = dark_red,
  light_red = light_red,
  light_orange = light_orange,
  orange = orange,
  magenta = magenta,
  pink = pink,
  dark_pink = dark_pink,
  light_pink = light_pink,
  gray = gray,

  bg = bg,
  bg_float = bg_float,
  bg_float_bright = bg_float_bright,
  bg_visual = dark_purple,

  fg = fg,
  fg_dark = fg_dark,
  fg_gutter = fg_gutter,
  border = gray,
  cursor = pink,

  error = light_red,
  warning = light_orange,
  info = orange,
  hint = magenta,

  diff = {
    add = dark_pink,
    change = magenta,
    delete = red,
  },

  syntax = {
    keyword = pink,
    type = magenta,
    variable = fg_gutter,
    func = dark_pink,
    literal = orange,
    string = red,
    param = fg,
    field = light_pink,
    comment = gray,
  },

  markup = {
    link = pink,
    h1 = red,
    h2 = orange,
    h3 = magenta,
    h4 = dark_pink,
    h5 = pink,
    h6 = light_pink,
  },
}

M.get = function()
  local options = require("darkrose.config").options
  return vim.tbl_deep_extend("force", colors, options.colors)
end

return M
