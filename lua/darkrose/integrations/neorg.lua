local M = {}

M.generate = function(overrides)
  local c = require("darkrose.colors").get()
  local u = require("darkrose.utils")

  local highlights = {
    selection_window = {
      heading = "+@text.title",
      arrow = "guifg=" .. c.red,
      key = "+@field",
      keyname = "+@constant",
      nestedkeyname = "+@string",
    },

    tags = {
      ranged_verbatim = {
        begin = "+PreProc",

        ["end"] = "+PreProc",

        name = {
          [""] = "+@none",
          delimiter = "+PreProc",
          word = "+PreProc",
        },

        parameters = "+@string",

        document_meta = {
          key = "+@field",
          value = "+@string",

          trailing = "+@keyword",
          title = "+@text.title",
          description = "+@string",
          authors = "+@string",
          categories = "+@string",
          created = "+@string",
          updated = "+@string",
          version = "+@string",

          object = {
            bracket = "+@operator",
          },

          array = {
            bracket = "+@operator",
            value = "+@string",
          },
        },
      },

      carryover = {
        begin = "+PreProc",

        name = {
          [""] = "+@none",
          word = "+PreProc",
          delimiter = "+PreProc",
        },

        parameters = "+@string",
      },
    },

    headings = {
      ["1"] = {
        title = "guifg=" .. c.markup.h1,
        prefix = "guifg=" .. c.markup.h1,
      },
      ["2"] = {
        title = "guifg=" .. c.markup.h2,
        prefix = "guifg=" .. c.markup.h2,
      },
      ["3"] = {
        title = "guifg=" .. c.markup.h3,
        prefix = "guifg=" .. c.markup.h3,
      },
      ["4"] = {
        title = "guifg=" .. c.markup.h4,
        prefix = "guifg=" .. c.markup.h4,
      },
      ["5"] = {
        title = "guifg=" .. c.markup.h5,
        prefix = "guifg=" .. c.markup.h5,
      },
      ["6"] = {
        title = "guifg=" .. c.markup.h6,
        prefix = "guifg=" .. c.markup.h6,
      },
    },

    error = "+@error",

    todo_items = {
      undone = {
        [""] = "guifg=" .. c.fg,
        content = "+@none",
      },
      pending = {
        [""] = "guifg=" .. c.dark_pink,
        content = "+@none",
      },
      done = {
        [""] = "guifg=" .. c.red,
        content = "+@none",
      },
      on_hold = {
        [""] = "guifg=" .. c.gray,
        content = "+@none",
      },
      cancelled = {
        [""] = "guifg=" .. c.fg_dark,
        content = "+@none",
      },
      urgent = {
        [""] = "guifg=" .. c.light_red,
        content = "+@none",
      },
      uncertain = {
        [""] = "guifg=" .. c.orange,
        content = "+@none",
      },
      recurring = {
        [""] = "guifg=" .. c.pink,
        content = "+@none",
      },
    },

    lists = {
      unordered = {
        prefix = "guifg=" .. c.markup.h1,

        -- Legacy config, may remove later
        ["1"] = {
          title = "guifg=" .. c.markup.h1,
          prefix = "guifg=" .. c.markup.h1,
        },
        ["2"] = {
          title = "guifg=" .. c.markup.h2,
          prefix = "guifg=" .. c.markup.h2,
        },
        ["3"] = {
          title = "guifg=" .. c.markup.h3,
          prefix = "guifg=" .. c.markup.h3,
        },
        ["4"] = {
          title = "guifg=" .. c.markup.h4,
          prefix = "guifg=" .. c.markup.h4,
        },
        ["5"] = {
          title = "guifg=" .. c.markup.h5,
          prefix = "guifg=" .. c.markup.h5,
        },
        ["6"] = {
          title = "guifg=" .. c.markup.h6,
          prefix = "guifg=" .. c.markup.h6,
        },
      },

      ordered = {
        prefix = "guifg=" .. c.markup.h1,

        -- Legacy config, may remove later
        ["1"] = { prefix = "guifg=" .. c.markup.h1 },
        ["2"] = { prefix = "guifg=" .. c.markup.h2 },
        ["3"] = { prefix = "guifg=" .. c.markup.h3 },
        ["4"] = { prefix = "guifg=" .. c.markup.h4 },
        ["5"] = { prefix = "guifg=" .. c.markup.h5 },
        ["6"] = { prefix = "guifg=" .. c.markup.h6 },
      },
    },

    quotes = {
      ["1"] = {
        prefix = "guifg=" .. c.fg_dark,
        content = "guifg=" .. c.fg_dark,
      },
      ["2"] = {
        prefix = "guifg=" .. u.shade(c.fg_dark, 10),
        content = "guifg=" .. u.shade(c.fg_dark, 10),
      },
      ["3"] = {
        prefix = "guifg=" .. u.shade(c.fg_dark, 20),
        content = "guifg=" .. u.shade(c.fg_dark, 20),
      },
      ["4"] = {
        prefix = "guifg=" .. u.shade(c.fg_dark, 30),
        content = "guifg=" .. u.shade(c.fg_dark, 30),
      },
      ["5"] = {
        prefix = "guifg=" .. u.shade(c.fg_dark, 40),
        content = "guifg=" .. u.shade(c.fg_dark, 40),
      },
      ["6"] = {
        prefix = "guifg=" .. u.shade(c.fg_dark, 50),
        content = "guifg=" .. u.shade(c.fg_dark, 50),
      },
    },

    links = {
      description = {
        [""] = "+@text.reference",
        delimiter = "+NonText",
      },

      file = {
        [""] = "+@comment",
        delimiter = "+NonText",
      },

      location = {
        delimiter = "+NonText",

        url = "+@text.uri",

        generic = {
          [""] = "+@text.uri",
          prefix = "+@text.uri",
        },

        external_file = {
          [""] = "+@text.uri",
          prefix = "+@text.uri",
        },
      },
    },

    markup = {
      bold = {
        [""] = "+@text.strong",
        delimiter = "+NonText",
      },
      italic = {
        [""] = "+@text.emphasis",
        delimiter = "+NonText",
      },
      underline = {
        [""] = "+@text.underline",
        delimiter = "+NonText",
      },
      strikethrough = {
        [""] = "+@text.strike",
        delimiter = "+NonText",
      },
      spoiler = {
        [""] = "+@text.danger",
        delimiter = "+NonText",
      },
      subscript = {
        [""] = "+@number",
        delimiter = "+NonText",
      },
      superscript = {
        [""] = "+@number",
        delimiter = "+NonText",
      },
      inline_macro = {
        [""] = "+@macro",
        delimiter = "+NonText",
      },
      verbatim = {
        [""] = "+@comment",
        delimiter = "+NonText",
      },
      inline_comment = {
        [""] = "+@comment",
        delimiter = "+NonText",
      },
      inline_math = {
        [""] = "+@text.math",
        delimiter = "+NonText",
      },

      free_form_delimiter = "+NonText",
    },

    modifiers = {
      escape = "+@operator",
    },
  }

  if overrides ~= nil then
    highlights = vim.tbl_deep_extend("force", highlights, overrides(c) or {})
  end

  return highlights
end

return M
