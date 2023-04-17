local M = {}

M.generate = function(overrides)
  local c = require("darkrose.colors").get()

  local highlights = {
    -- Buffers
    background = { bg = c.bg },
    buffer_visible = { fg = c.fg, bg = c.bg },
    buffer_selected = { fg = c.dark_pink, bg = c.bg, bold = true, italic = false },

    -- Duplicate
    duplicate = { fg = c.fg, bg = c.bg },
    duplicate_visible = { fg = c.fg, bg = c.bg, italic = true },
    duplicate_selected = { fg = c.dark_pink, bg = c.bg, bold = true, italic = false },

    -- Tabs
    tab = { fg = c.fg, bg = c.bg },
    tab_selected = { fg = c.dark_pink, bg = c.bg, bold = true, italic = false },
    tab_separator = { fg = c.border, bg = c.bg },
    tab_close = { fg = c.fg, bg = c.bg },
    tab_separator_selected = { fg = c.dark_pink, bg = c.bg },
    indicator_selected = { fg = c.dark_pink, bg = c.bg },

    -- Separators
    separator = { fg = c.border, bg = c.bg },
    separator_visible = { fg = c.border, bg = c.bg },
    separator_selected = { fg = c.border, bg = c.bg },
    offset_separator = { fg = c.border, bg = c.bg },

    -- Close buttons
    close_button = { fg = c.fg, bg = c.bg },
    close_button_visible = { fg = c.fg, bg = c.bg },
    close_button_selected = { fg = c.fg, bg = c.bg },

    -- Empty fill
    fill = { bg = c.bg },

    -- Numbers
    numbers = { fg = c.fg, bg = c.bg },
    numbers_visible = { fg = c.fg, bg = c.bg },
    numbers_selected = { fg = c.dark_pink, bg = c.bg, bold = true, italic = false },

    -- Errors
    error = { fg = c.error, bg = c.bg },
    error_visible = { fg = c.error, bg = c.bg },
    error_selected = { fg = c.error, bg = c.bg, bold = true, italic = false },
    error_diagnostic = { fg = c.error, bg = c.bg },
    error_diagnostic_visible = { fg = c.error, bg = c.bg },
    error_diagnostic_selected = { fg = c.error, bg = c.bg, bold = true, italic = false },

    -- Warnings
    warning = { fg = c.warning, bg = c.bg },
    warning_visible = { fg = c.warning, bg = c.bg },
    warning_selected = { fg = c.warning, bg = c.bg, bold = true },
    warning_diagnostic = { fg = c.warning, bg = c.bg },
    warning_diagnostic_visible = { fg = c.warning, bg = c.bg },
    warning_diagnostic_selected = { fg = c.warning, bg = c.bg },

    -- Info
    info = { fg = c.info, bg = c.bg },
    info_visible = { fg = c.info, bg = c.bg },
    info_selected = { fg = c.info, bg = c.bg, bold = true, italic = false },
    info_diagnostic = { fg = c.info, bg = c.bg },
    info_diagnostic_visible = { fg = c.info, bg = c.bg },
    info_diagnostic_selected = { fg = c.info, bg = c.bg, bold = true, italic = false },

    -- Hint
    hint = { fg = c.hint, bg = c.bg },
    hint_visible = { fg = c.hint, bg = c.bg },
    hint_selected = { fg = c.hint, bg = c.bg, bold = true, italic = false },
    hint_diagnostic = { fg = c.hint, bg = c.bg },
    hint_diagnostic_visible = { fg = c.hint, bg = c.bg },
    hint_diagnostic_selected = { fg = c.hint, bg = c.bg, bold = true, italic = false },

    -- Diagnostics
    diagnostic = { fg = c.fg_gutter, bg = c.bg },
    diagnostic_visible = { fg = c.fg_gutter, bg = c.bg },
    diagnostic_selected = { fg = c.fg_gutter, bg = c.bg, bold = true },

    -- Modified
    modified = { fg = c.dark_pink, bg = c.bg },
    modified_selected = { fg = c.dark_pink, bg = c.bg, bold = true, italic = false },
  }

  if overrides ~= nil then
    highlights = vim.tbl_deep_extend("force", highlights, overrides(c) or {})
  end

  return highlights
end

return M
