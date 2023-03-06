return {
  -- Treesitter highlight groups
  ["@annotation"] = { link = "PreProc" },
  ["@attribute"] = { fg = C.syntax.keyword },
  ["@include"] = { link = "PreProc" },

  ["@boolean"] = { link = "Boolean" },
  ["@constant"] = { link = "Constant" },
  ["@constant.builtin"] = { link = "Boolean" },

  ["@field"] = { fg = C.syntax.field },

  ["@constructor"] = { link = "Function" },
  ["@function"] = { link = "Function" },
  ["@function.builtin"] = { fg = C.syntax.func, style = "italic" },

  ["@error"] = { link = "Error" },

  ["@keyword"] = { link = "Keyword" },
  ["@keyword.operator"] = { link = "Keyword" },
  ["@keyword.function"] = { link = "Keyword" },

  ["@namespace"] = { fg = C.syntax.field },
  ["@number"] = { link = "Number" },
  ["@operator"] = { link = "Operator" },
  ["@parameter"] = { fg = C.syntax.param },
  ["@property"] = { fg = C.syntax.field },

  ["@punctuation.bracket"] = { fg = C.fg },
  ["@punctuation.delimiter"] = { fg = C.fg },
  ["@punctuation.special"] = { fg = C.fg },

  ["@string"] = { fg = C.syntax.string },
  ["@string.escape"] = { fg = C.syntax.string, style = "bold" },
  ["@string.regex"] = { fg = C.syntax.variable },
  ["@string.special"] = { link = "@string" },

  ["@label"] = { fg = C.syntax.field },
  ["@symbol"] = { fg = C.syntax.variable },
  ["@tag"] = { fg = C.syntax.keyword },
  ["@tag.attribute"] = { link = "@property" },
  ["@tag.delimiter"] = { fg = C.fg },

  ["@text"] = { fg = C.fg },
  ["@text.strong"] = { link = "Bold" },
  ["@text.emphasis"] = { link = "Italic" },
  ["@text.underline"] = { link = "Underlined" },
  ["@text.strike"] = { style = "strikethrough" },
  ["@text.math"] = { link = "Special" },
  ["@text.environment"] = { link = "Macro" },
  ["@text.environment.name"] = { link = "Type" },
  ["@text.title"] = { link = "Title" },
  ["@text.uri"] = { fg = C.markup.link },
  ["@text.note"] = { link = "SpecialComment" },
  ["@text.warning"] = { link = "Todo" },
  ["@text.danger"] = { link = "WarningMsg" },

  ["@todo"] = { link = "Todo" },

  ["@type"] = { link = "Type" },
  ["@type.qualifier"] = { link = "Keyword" },

  ["@variable"] = { fg = C.syntax.variable },
  ["@variable.builtin"] = { fg = C.syntax.variable, style = "italic" },

  -- Treesitter playground
  nodeType = { fg = C.syntax.string },
  nodeNumber = { link = "Number" },
  nodeOp = { link = "Operator" },
  nodeTag = { fg = C.syntax.field },
  nodeAnonymous = { fg = C.syntax.variable },
}
