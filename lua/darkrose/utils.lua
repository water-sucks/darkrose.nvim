local M = {}

local function clamp(component)
  return math.min(math.max(component, 0), 255)
end

-- Create a new shade of a provided color hex code
-- @param hex string Color hex code
-- @param amount number Amount to darken color by
-- @return string? Created color hex code
M.shade = function(hex, amount)
  hex = hex:lower()
  local pattern = string.format("^#(%s)$", string.rep("[abcdef0-9]", 6))
  assert(hex:find(pattern) ~= nil, "hex_to_rgb: invalid hex_str: " .. tostring(hex))

  local num = tonumber(hex:match(pattern), 16)
  local r = math.floor(num / 0x10000) + amount
  local g = (math.floor(num / 0x100) % 0x100) + amount
  local b = (num % 0x100) + amount
  local new_hex = string.format("#%x", clamp(r) * 0x10000 + clamp(g) * 0x100 + clamp(b))

  -- Enable this assertion to check if the clamp is working properly.
  -- assert(new_hex:find(pattern) ~= nil, "hex_to_rgb: invalid hex_str: " .. tostring(new_hex))

  return new_hex
end

M.apply_highlights = function()
  local options = require("darkrose.config").options
  local colors = require("darkrose.colors").get()

  local theme = require("darkrose.theme").generate()

  -- Apply overrides to colors
  theme.highlights = vim.tbl_deep_extend("force", theme.highlights, options.overrides(colors) or {})

  for name, highlight in pairs(theme.highlights) do
    vim.api.nvim_set_hl(0, name, highlight)
  end

  for prop, color in pairs(theme.terminal) do
    vim.api.nvim_set_var(prop, color)
  end
end

return M
