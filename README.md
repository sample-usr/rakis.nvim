# rakis.nvim
A cozy theme for late desert nigths or early mornings

<div align="center">
  dark
  <img width="1728" alt="rakis_dark" src="https://github.com/user-attachments/assets/b6572d5d-5f49-4cd1-8ba7-7058c31bdc00">
  light
  <img width="1728" alt="rakis_light" src="https://github.com/user-attachments/assets/bd6e6d89-c1c0-4f66-8d77-dfbc58a13b05">
</div>

## Features
- no pastel, high contrast for the most part
- hmm, kinda nice looking
- support for some plugins/tools (more on the way)

<details>
<summary>Supported neovim plugins</summary>

- [alpha-nvim](https://github.com/goolord/alpha-nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [dashboard-nvim](https://github.com/nvimdev/dashboard-nvim)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [lazy.nvim](https://github.com/folke/lazy.nvim)
- [mini.nvim](https://github.com/echasnovski/mini.nvim)
- [nvim-notify](https://github.com/rcarriga/nvim-notify)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [trouble.nvim](https://github.com/folke/trouble.nvim)
- [which-key.nvim](https://github.com/folke/which-key.nvim)

</details>

## Supported extras
These are the tools other than neovim that are supproted. You can find their respective theme in [extras](extras/). You can always submit a PR for any tool that is missing 💙
- [Fish](https://fishshell.com/docs/current/index.html)
- [Lazygit](https://github.com/jesseduffield/lazygit)
- [WezTerm](https://wezfurlong.org/wezterm/config/files.html)
- [Zellij](https://zellij.dev/)


## Installation

Lazy:

```lua
{
  "sample-usr/rakis.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
}
```

Packer:

```lua
use { "sample-usr/rakis.nvim" }
```

## Usage
```lua
vim.cmd[[colorscheme rakis]]
```

```vim
colorscheme rakis
```

You can set the `light` or `dark` mode using the vim background options
```lua
vim.o.background = "dark"
```

## Configuraiton

Below is an example of all the available configuration options with their default values:

```lua
require("rakis").setup({
    -- Enable transparent background
    transparent = false,

    -- Enable italics comments
    italic_comments = false,

    -- Replace all fillchars with ' '
    hide_fillchars = false,

    -- Borderless look for telescope
    borderless_telescope = true,

    -- Set terminal colors used in `:terminal`
    terminal_colors = true,

    -- Improve start up time by caching highlights. Generate cache with :RakisBuildCache and clear with :RakisClearCache
    cache = false,

    theme = {
        variant = "default", -- use "light" for the light variant. Also accepts "auto" to set dark or light colors based on the current value of `vim.o.background`
        highlights = {
            -- Highlight groups to override, adding new groups is also possible
            -- See `:h highlight-groups` for a list of highlight groups or run `:hi` to see all groups and their current values

            -- Example:
            Comment = { fg = "#696969", bg = "NONE", italic = true },
        },

        -- Override a highlight group entirely using the color palette
        overrides = function(colors) -- NOTE: This function nullifies the `highlights` option
            -- Example:
            return {
                Comment = { fg = colors.green, bg = "NONE", italic = true },
                ["@property"] = { fg = colors.magenta, bold = true },
            }
        end,

        -- Override a color entirely
        colors = {
            -- Example:
            bg = "#000000",
            bg_highlight = "#00ff00",
        },
    },

    -- Disable or enable colorscheme extensions
    extensions = {
        telescope = true,
        nvim_notify = true,
        mini = true,
        ...
    },
})
```

### Credits
Inspired by
- [tokyonight](https://github.com/folke/tokyonight.nvim/)
- [cyberdream](https://github.com/scottmckendry/cyberdream.nvim)
