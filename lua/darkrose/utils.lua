local M = {}

-- Create a new shade of a provided color hex code
-- @param hex string Color hex code
-- @param amount number Amount to darken color by
-- @return string? Created color hex code
M.shade = function(hex, amount)
  hex = hex:lower()
  local pattern = string.format("^#(%s)$", string.rep("[abcdef0-9]", 6))
  assert(hex:find(pattern) ~= nil, "hex_to_rgb: invalid hex_str: " .. tostring(hex))

  local num = tonumber(hex:match(pattern), 16)
  local r = bit.rshift(num, 16) + amount
  local b = bit.band(bit.rshift(num, 8), 0x00FF) + amount
  local g = bit.band(num, 0x0000FF) + amount
  local new_color = bit.bor(g, bit.bor(bit.lshift(b, 8), bit.lshift(r, 16)))
  return string.format("#%x", new_color)
end

M.highlight = function(name, hi)
  local style = hi.style and "gui=" .. hi.style or "gui=NONE"
  local fg = hi.fg and "guifg=" .. hi.fg or "guifg=NONE"
  local bg = hi.bg and "guibg=" .. hi.bg or "guibg=NONE"
  local sp = hi.sp and "guisp=" .. hi.sp or ""

  if hi.link then
    vim.cmd(string.format("highlight! link %s %s", name, hi.link))
  else
    vim.cmd(string.format("highlight! %s %s %s %s %s", name, style, fg, bg, sp))
  end
end

return M
