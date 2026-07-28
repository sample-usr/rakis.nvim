# rakis.nvim

A cozy theme for late desert nights or early mornings

<div align="center">
  dark
  <img width="1728" alt="rakis_dark" src="https://github.com/user-attachments/assets/b6572d5d-5f49-4cd1-8ba7-7058c31bdc00">
  light
  <img width="1728" alt="rakis_light" src="https://github.com/user-attachments/assets/bd6e6d89-c1c0-4f66-8d77-dfbc58a13b05">
</div>

## Features

- no pastel, high contrast for the most part
- kinda nice looking
- support for some plugins/tools (more on the way)

<details>
<summary>Supported neovim plugins</summary>

The name in backticks is the key to use under `extensions` in your config.

- [aerial.nvim](https://github.com/stevearc/aerial.nvim) — `aerial`
- [alpha-nvim](https://github.com/goolord/alpha-nvim) — `alpha`
- [avante.nvim](https://github.com/yetone/avante.nvim) — `avante`
- [barbar.nvim](https://github.com/romgrk/barbar.nvim) — `barbar`
- [blink.cmp](https://github.com/Saghen/blink.cmp) — `blink_cmp`
- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) — `bufferline`
- [copilot.vim](https://github.com/github/copilot.vim) / [copilot.lua](https://github.com/zbirenbaum/copilot.lua) — `copilot`
- [dashboard-nvim](https://github.com/nvimdev/dashboard-nvim) — `dashboard`
- [diffview.nvim](https://github.com/sindrets/diffview.nvim) — `diffview`
- [flash.nvim](https://github.com/folke/flash.nvim) — `flash`
- [fzf-lua](https://github.com/ibhagwan/fzf-lua) — `fzf_lua`
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) — `gitsigns`
- [grug-far.nvim](https://github.com/MagicDuck/grug-far.nvim) — `grug_far`
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) — `indent_blankline`
- [lazy.nvim](https://github.com/folke/lazy.nvim) — `lazy`
- [lazygit.nvim](https://github.com/kdheepak/lazygit.nvim) — `lazygit`
- [lsp_lines.nvim](https://git.sr.ht/~whynothugo/lsp_lines.nvim) — `lsp_lines`
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) — `lualine`
- [mini.nvim](https://github.com/echasnovski/mini.nvim) — `mini`
- [neogit](https://github.com/NeogitOrg/neogit) — `neogit`
- [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim) — `neotree`
- [neotest](https://github.com/nvim-neotest/neotest) — `neotest`
- [noice.nvim](https://github.com/folke/noice.nvim) — `noice`
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) — `cmp`
- [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui) — `dap`
- [nvim-lint](https://github.com/mfussenegger/nvim-lint) — `nvim_lint`
- [nvim-notify](https://github.com/rcarriga/nvim-notify) — `nvim_notify`
- [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) — `nvim_tree`
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) — `treesitter`
- [nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context) — `treesitter_context`
- [rainbow-delimiters.nvim](https://github.com/HiPhish/rainbow-delimiters.nvim) — `rainbow_delimiters`
- [render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim) — `render_markdown`
- [snacks.nvim](https://github.com/folke/snacks.nvim) — `snacks`
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) — `telescope`
- [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim) — `toggleterm`
- [trouble.nvim](https://github.com/folke/trouble.nvim) — `trouble`
- [vim-fugitive](https://github.com/tpope/vim-fugitive) — `fugitive`
- [vim-illuminate](https://github.com/RRethy/vim-illuminate) — `illuminate`
- [which-key.nvim](https://github.com/folke/which-key.nvim) — `whichkey`

Plus `lsp` for LSP semantic tokens and diagnostics, which needs no plugin.

</details>

## Supported extras

Tools supported other than neovim. You can find their respective theme in [extras](extras/). You can always submit a PR for any tool that is missing 💙

- [Alacritty](https://alacritty.org/)
- [Delta](https://github.com/dandavison/delta)
- [Fish](https://fishshell.com/docs/current/index.html)
- [fzf](https://github.com/junegunn/fzf)
- [Ghostty](https://ghostty.org/)
- [kitty](https://sw.kovidgoyal.net/kitty/)
- [Lazygit](https://github.com/jesseduffield/lazygit)
- [Slack](https://slack.com/)
- [tmux](https://github.com/tmux/tmux)
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

Or load a specific variant directly, regardless of `background`:

```vim
colorscheme rakis-dark
colorscheme rakis-light
```

## Palette

The palette is drawn from the world of Dune: the dark variant is the deep desert night of a sietch, the light variant the same desert at noon. Accent hues are identical across both variants.

| Key | Role |
| --- | --- |
| `bg`, `surface`, `overlay`, `highlight` | Background ramp: editor, panels/floats, subtle emphasis, selections |
| `text`, `subtle`, `muted`, `faint` | Foreground ramp: code, comments, punctuation/line numbers, whitespace decoration |
| `blood` | Errors, deletions, danger |
| `spice` | Keywords, titles — the signature color |
| `glowglobe` | Numbers, warnings, search |
| `oasis` | Strings, additions, success |
| `water` | Types, properties, hints |
| `ibad` | Functions, links, info |
| `dusk` | Constants, booleans, builtins |
| `bloom` | Operators |

## Configuration

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
                Comment = { fg = colors.oasis, bg = "NONE", italic = true },
                ["@property"] = { fg = colors.bloom, bold = true },
            }
        end,

        -- Override a color entirely
        colors = {
            -- Example:
            bg = "#000000",
            spice = "#ff9000",
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
