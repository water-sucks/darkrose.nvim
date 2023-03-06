return {
  -- Builtins
  Comment = { fg = C.syntax.comment }, -- any comment
  Constant = { fg = C.syntax.literal }, -- (preferred) any constant
  String = { fg = C.syntax.string }, --   a string constant: "this is a string"
  Character = { fg = C.syntax.string }, --  a character constant: 'c', '\n'
  Number = { fg = C.syntax.literal }, --   a number constant: 234, 0xff
  Float = { fg = C.syntax.literal }, --    a floating point constant: 2.3e10
  Boolean = { fg = C.syntax.literal, style = "italic" }, --  a boolean constant: TRUE, false

  Identifier = { fg = C.syntax.variable, style = "NONE" }, -- (preferred) any variable name
  Function = { fg = C.syntax.func, style = "NONE" }, -- function name (also: methods for classes)
  Statement = { fg = C.syntax.keyword }, -- (preferred) any statement
  Conditional = { link = "Keyword" }, --  if, then, else, endif, switch, etC.
  Repeat = { link = "Keyword" }, --   for, do, while, etC.
  Label = { link = "Keyword" }, --    case, default, etC.
  Operator = { fg = C.syntax.func }, -- "sizeof", "+", "*", etC.
  Keyword = { fg = C.syntax.keyword, style = "italic" }, --  any other keyword
  Exception = { link = "Keyword" }, --  try, catch, throw

  PreProc = { fg = C.syntax.keyword, style = "italic" }, -- (preferred) generic Preprocessor
  Include = { link = "PreProc" }, --  preprocessor #include
  Define = { link = "PreProc" }, --   preprocessor #define
  Macro = { link = "PreProc" }, --    same as Define
  PreCondit = { link = "PreProc" }, --  preprocessor #if, #else, #endif, etC.

  Type = { fg = C.syntax.type }, -- (preferred) int, long, char, etC.
  StorageClass = { link = "Type" }, -- static, register, volatile, etC.
  Structure = { link = "Type" }, --  struct, union, enum, etC.
  Typedef = { link = "Type" }, --  A typedef

  Special = { fg = C.syntax.comment }, -- (preferred) any special symbol
  SpecialChar = { link = "Special" }, --  special character in a constant
  Tag = { link = "Special" }, --    you can use CTRL-] on this
  Delimiter = { link = "Special" }, --  character that needs attention
  Debug = { link = "Special" }, --    debugging statements

  Underlined = { style = "underline" }, -- (preferred) text that stands out, HTML links
  Bold = { style = "bold" },
  Italic = { style = "italic" },
  -- ("Ignore", below, may be invisible...)
  -- Ignore = { }, -- (preferred) left blank, hidden  |hl-Ignore|

  Error = { fg = C.error }, -- (preferred) any erroneous construct
  Todo = { fg = C.fg, bg = C.red }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

  -- Language-specific bindings
}
