return {
  ColorColumn = { bg = C.bg_visual }, -- used for the columns set with 'colorcolumn'
  Conceal = { fg = C.fg_gutter }, -- placeholder characters substituted for concealed text (see 'conceallevel')

  Cursor = { fg = C.bg, bg = C.fg }, -- character under the cursor
  lCursor = { link = "Cursor" }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
  CursorIM = { link = "Cursor" }, -- like Cursor, but used when in IME mode |CursorIM|
  CursorLine = { bg = U.shade(C.bg_visual, -10) }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
  CursorColumn = { link = "CursorColumn" }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
  TermCursor = { fg = C.fg, bg = C.cursor }, -- cursor in a focused terminal
  TermCursorNC = { fg = C.fg, bg = U.shade(C.cursor, -50) }, -- cursor in an unfocused terminal

  Directory = { fg = C.dark_pink }, -- directory names (and other special names in listings)

  DiffAdd = { fg = U.shade(C.diff.add, 50), bg = C.diff.add },
  DiffChange = { fg = U.shade(C.diff.change, 50), bg = C.diff.change },
  DiffDelete = { fg = U.shade(C.diff.delete, 50), bg = C.diff.delete },
  diffAdded = { fg = C.diff.add },
  diffChanged = { fg = C.diff.change },
  diffRemoved = { fg = C.diff.delete },
  DiffText = { fg = C.fg_gutter }, -- diff mode: Changed text within a changed line |diff.txt|

  EndOfBuffer = { fg = C.fg_dark }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
  ErrorMsg = { fg = C.error }, -- error messages on the command line
  VertSplit = { fg = C.border, bg = C.bg }, -- the column separating vertically split windows

  Folded = { fg = C.fg, bg = C.bg_visual }, -- line used for closed folds
  FoldColumn = { link = "Folded" }, -- 'foldcolumn'

  SignColumn = { fg = C.fg_gutter, bg = C.bg }, -- column where |signs| are displayed
  SignColumnSB = { fg = C.fg_gutter, bg = C.bg }, -- column where |signs| are displayed

  Search = { fg = C.none, bg = C.bg_visual }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
  IncSearch = { fg = C.bg, bg = C.orange }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
  Substitute = { fg = C.gray, bg = C.red }, -- |:substitute| replacement text highlighting

  LineNr = { fg = C.fg_dark }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
  CursorLineNr = { fg = U.shade(C.fg_dark, 50) }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
  MatchParen = { fg = C.fg, bg = C.fg_dark }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|

  ModeMsg = { fg = C.fg, style = "bold" }, -- 'showmode' message (e.g., "-- INSERT -- ")
  MsgArea = { fg = C.fg, style = "NONE" }, -- Area for messages and cmdline
  MoreMsg = { fg = C.fg_dark }, -- |more-prompt|
  Question = { fg = C.red, style = "bold" },

  NonText = { fg = C.fg_dark }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
  Normal = { fg = C.fg, bg = C.bg }, -- normal text
  NormalNC = { fg = C.fg, bg = C.bg }, -- normal text in non-current windows
  NormalSB = { fg = C.fg, bg = C.bg_float }, -- normal text in non-current windows
  SpecialKey = { fg = C.fg_gutter }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|

  NormalFloat = { fg = C.fg, bg = C.bg_float }, -- Normal text in floating windows.
  FloatBorder = { fg = C.border },

  Pmenu = { fg = C.fg, bg = C.bg_float }, -- Popup menu: normal item.
  PmenuSel = { fg = C.fg, bg = U.shade(C.bg_float, 15) }, -- Popup menu: selected item.
  PmenuSbar = { bg = C.fg_gutter }, -- Popup menu: scrollbar.
  PmenuThumb = { bg = C.fg_gutter }, -- Popup menu: Thumb of the scrollbar.

  QuickFixLine = { bg = C.markup.link, style = "bold" }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
  qfLineNr = { fg = C.red },
  qfFileName = { fg = C.markup.link },

  SpellBad = { sp = C.error, style = "undercurl" }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
  SpellCap = { sp = C.warning, style = "undercurl" }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
  SpellLocal = { sp = C.info, style = "undercurl" }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
  SpellRare = { sp = C.hint, style = "undercurl" }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.

  StatusLine = { fg = C.bg, bg = C.fg_dark }, -- status line of current window
  StatusLineNC = { fg = C.fg, bg = C.bg }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
  TabLine = { fg = C.fg, bg = C.bg }, -- tab pages line, not active tab page label
  TabLineFill = { bg = C.bg_float }, -- tab pages line, where there are no labels
  TabLineSel = { link = "PmenuSel" }, -- tab pages line, active tab page label

  Title = { fg = C.magenta, style = "bold" }, -- titles for output from ":set all", ":autocmd" etC.
  Visual = { bg = C.bg_visual }, -- Visual mode selection
  VisualNOS = { link = "Visual" }, -- Visual mode selection when vim is "Not Owning the Selection".
  WarningMsg = { fg = C.warning }, -- warning messages
  Whitespace = { fg = C.gray }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
  WildMenu = { bg = U.shade(C.bg_float, 15) }, -- current match in 'wildmenu' completion

  healthError = { fg = C.error },
  healthSuccess = { fg = C.info },
  healthWarning = { fg = C.warning },
}
