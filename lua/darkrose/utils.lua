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
