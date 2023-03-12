local red = "#9E4244"
local dark_red = "#6D0011"
local light_red = "#F85149"
local orange = "#A26B35"
local light_orange = "#F0883E"
local dark_purple = "#281C2B"
local magenta = "#8B2950"
local dark_pink = "#B76E79"
local pink = "#EB6F92"
local salmon = "#FF7979"
local light_pink = "#F6ACA7"
local gray = "#8B8B8B"

local bg = "#000000"
local bg_float = "#101010"
local bg_float_bright = "#121212"
local fg = "#C9C1C9"
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
  salmon = salmon,
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
  cursor = salmon,

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
    link = salmon,
    h1 = red,
    h2 = orange,
    h3 = magenta,
    h4 = dark_pink,
    h5 = pink,
    h6 = light_pink,
  },
}

M.get = function()
  local options = require("darkrose").options
  return vim.tbl_deep_extend("force", colors, options.colors)
end

return M
