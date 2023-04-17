return function(config)
  -- These are not valid highlights and shouldn't be enabled through setup
  if O ~= nil then
    return {}
  end

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
        begin = "+@PreProc",

        ["end"] = "+@PreProc",

        name = {
          [""] = "+@none",
          delimiter = "+@PreProc",
          word = "+@PreProc",
        },

        parameters = "+@string",

        document_meta = {
          key = "+@field",
          value = "+@string",
          trailing = "+@repeat",
          title = "+@text.title",
          description = "+@string",
          authors = "+@string",
          categories = "+@string",
          created = "+@string",
          updated = "+@string",
          version = "+@string",

          object = {
            bracket = "+@punctuation.bracket",
          },

          array = {
            bracket = "+@punctuation.bracket",
            value = "+@string",
          },
        },
      },

      carryover = {
        begin = "+@PreProc",

        name = {
          [""] = "+@none",
          word = "+@PreProc",
          delimiter = "+@PreProc",
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

    -- todo_items currently not supported, see linked issue
    -- https://github.com/nvim-neorg/neorg/issues/697
    -- todo_items = {
    --   undone = {
    --     ["1"] = { [""] = "+@punctuation.delimiter", content = "+@none" },
    --     ["2"] = { [""] = "+@punctuation.delimiter", content = "+@none" },
    --     ["3"] = { [""] = "+@punctuation.delimiter", content = "+@none" },
    --     ["4"] = { [""] = "+@punctuation.delimiter", content = "+@none" },
    --     ["5"] = { [""] = "+@punctuation.delimiter", content = "+@none" },
    --     ["6"] = { [""] = "+@punctuation.delimiter", content = "+@none" },
    --   },
    --   pending = {
    --     ["1"] = { [""] = "+@namespace", content = "+@none" },
    --     ["2"] = { [""] = "+@namespace", content = "+@none" },
    --     ["3"] = { [""] = "+@namespace", content = "+@none" },
    --     ["4"] = { [""] = "+@namespace", content = "+@none" },
    --     ["5"] = { [""] = "+@namespace", content = "+@none" },
    --     ["6"] = { [""] = "+@namespace", content = "+@none" },
    --   },
    --   done = {
    --     ["1"] = { [""] = "+@string", content = "+@none" },
    --     ["2"] = { [""] = "+@string", content = "+@none" },
    --     ["3"] = { [""] = "+@string", content = "+@none" },
    --     ["4"] = { [""] = "+@string", content = "+@none" },
    --     ["5"] = { [""] = "+@string", content = "+@none" },
    --     ["6"] = { [""] = "+@string", content = "+@none" },
    --   },
    --   on_hold = {
    --     ["1"] = { [""] = "+@text.note", content = "+@none" },
    --     ["2"] = { [""] = "+@text.note", content = "+@none" },
    --     ["3"] = { [""] = "+@text.note", content = "+@none" },
    --     ["4"] = { [""] = "+@text.note", content = "+@none" },
    --     ["5"] = { [""] = "+@text.note", content = "+@none" },
    --     ["6"] = { [""] = "+@text.note", content = "+@none" },
    --   },
    --   cancelled = {
    --     ["1"] = { [""] = "+Whitespace", content = "+@none" },
    --     ["2"] = { [""] = "+Whitespace", content = "+@none" },
    --     ["3"] = { [""] = "+Whitespace", content = "+@none" },
    --     ["4"] = { [""] = "+Whitespace", content = "+@none" },
    --     ["5"] = { [""] = "+Whitespace", content = "+@none" },
    --     ["6"] = { [""] = "+Whitespace", content = "+@none" },
    --   },
    --   urgent = {
    --     ["1"] = { [""] = "+@text.danger", content = "+@none" },
    --     ["2"] = { [""] = "+@text.danger", content = "+@none" },
    --     ["3"] = { [""] = "+@text.danger", content = "+@none" },
    --     ["4"] = { [""] = "+@text.danger", content = "+@none" },
    --     ["5"] = { [""] = "+@text.danger", content = "+@none" },
    --     ["6"] = { [""] = "+@text.danger", content = "+@none" },
    --   },
    --   uncertain = {
    --     ["1"] = { [""] = "+@boolean", content = "+@none" },
    --     ["2"] = { [""] = "+@boolean", content = "+@none" },
    --     ["3"] = { [""] = "+@boolean", content = "+@none" },
    --     ["4"] = { [""] = "+@boolean", content = "+@none" },
    --     ["5"] = { [""] = "+@boolean", content = "+@none" },
    --     ["6"] = { [""] = "+@boolean", content = "+@none" },
    --   },
    --   recurring = {
    --     ["1"] = { [""] = "+@repeat", content = "+@none" },
    --     ["2"] = { [""] = "+@repeat", content = "+@none" },
    --     ["3"] = { [""] = "+@repeat", content = "+@none" },
    --     ["4"] = { [""] = "+@repeat", content = "+@none" },
    --     ["5"] = { [""] = "+@repeat", content = "+@none" },
    --     ["6"] = { [""] = "+@repeat", content = "+@none" },
    --   },
    -- },

    lists = {
      unordered = {
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

  highlights = vim.tbl_deep_extend("force", highlights, config or {})

  return highlights
end
