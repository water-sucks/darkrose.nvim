# Darkrose

<!--alex disable color colors special -->

A dark, low-contrast colorscheme for Neovim inspired by roses and geared towards
dark theme lovers.

This repository is hosted on [sr.ht](sr.ht/~watersucks/optnix), with an official
mirror on [GitHub](https://github.com/water-sucks/optnix).

## Screenshot

![image](https://i.imgur.com/pKIyzLy.png)

## Requirements

- Neovim >= 0.9.0

## Installation

[lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
    "water-sucks/darkrose.nvim",
    lazy = false,
    priority = 1000,
}
```

## Usage

```lua
require("darkrose").setup({
    -- Override colors
    colors = {
        orange = "#F87757",
    },
    -- Override existing or add new highlight groups
    overrides = function(c)
        return {
            Class = { fg = c.magenta },
            ["@variable"] = { fg = c.fg_dark },
        }
    end,
    -- Styles to enable or disable
    styles = {
        bold = true, -- Enable bold highlights for some highlight groups
        italic = true, -- Enable italic highlights for some highlight groups
        underline = true, -- Enable underline highlights for some highlight groups
    }
})
vim.cmd.colorscheme("darkrose")
```

There is no need to run the setup function if you do not want to customize the
colorscheme; run `vim.cmd.colorscheme("darkrose")`, and you're good to go. Color
names are defined [here](lua/darkrose/colors.lua).

## Plugins

These are plugins explicitly supported by the colorscheme (more is always
better, feel free to add more in a PR!):

- LSP diagnostics
- LSP semantic highlighting
- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)\*
- [diffview.nvim](https://github.com/sindrets/diffview.nvim)
- [fidget.nvim](https://github.com/j-hui/fidget.nvim)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [lazy.nvim](https://github.com/folke/lazy.nvim)
- [neorg](https://github.com/nvim-neorg/neorg)\*
- [noice.nvim](https://github.com/folke/noice.nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
- [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [vimtex](https://github.com/lervag/vimtex)
- [which-key.nvim](https://github.com/folke/which-key.nvim)

### Special Integrations

Certain plugins have too many highlights to define inside the theme file without
ripping my hair out. They are the plugins marked with an asterisk above, and
they have special integrations provided. These are how to use them:

<details>
<summary>bufferline.nvim</summary>

Pass the highlighting integration as an argument to bufferline.nvim's setup
function. It must be loaded after darkrose is set up for this to work.

```lua
-- Define overrides to any highlight arguments here; this is an optional argument
-- to the generate function.
local overrides = {}
require("bufferline").setup({
    highlights = require("darkrose.integrations.bufferline").generate(overrides),
})
```

</details>

<details>
<summary>neorg</summary>

Pass the highlighting integration as an argument to neorg's setup function. It
must be loaded after darkrose is set up for this to work.

```lua
-- Define overrides to any highlight arguments here; this is an optional argument
-- to the generate function.
local overrides = {}
require("neorg").setup({
    load = {
        ["core.highlights"] = {
            config = {
                highlights = require("darkrose.integrations.neorg").generate(overrides),
            },
        },
    },
})
```

</details>

## Contributing

Prefer emailing patch sets to the
[official development mailing list](mailto:~watersucks/darkrose.nvim-devel@lists.sr.ht).

While the official repository is located on
[sr.ht](https://git.sr.ht/~watersucks/darkrose.nvim), contributions are also
accepted through GitHub using the
[official mirror](https://github.com/water-sucks/darkrose.nvim), if desired.

## Thanks

- [rose-pine/neovim](https://github.com/rose-pine/neovim) :: for inspiring the
  colorscheme
- [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim) :: for
  helping me structure my code properly
- [catppuccin/nvim](https://github.com/catppuccin/nvim) :: for the special
  integrations idea and implementation
