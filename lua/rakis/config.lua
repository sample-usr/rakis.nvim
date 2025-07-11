local M = {}

---@class RakisHighlight
---@field fg? string
---@field bg? string
---@field sp? string
---@field bold? boolean
---@field italic? boolean
---@field underline? boolean
---@field strikethrough? boolean

---@alias RakisOverrideFn fun(palette: RakisPalette): RakisHighlight

---@class ThemeConfig
---@field variant? "default" | "light" | "auto"
---@field colors? RakisPalette
---@field highlights? table<string, RakisHighlight>
---@field overrides? RakisOverrideFn
---@field cache? boolean

---@alias RakisTelescopeStyle "nvchad" | "flat"

---@class extensions
---@field alpha? boolean
---@field cmp? boolean
---@field dashboard? boolean
---@field fzflua? boolean
---@field gitpad? boolean
---@field gitsigns? boolean
---@field grapple? boolean
---@field grugfar? boolean
---@field heirline? boolean
---@field helpview? boolean
---@field hop? boolean
---@field indentblankline? boolean
---@field kubectl? boolean
---@field lazy? boolean
---@field leap? boolean
---@field markdown? boolean
---@field markview? boolean
---@field mini? boolean
---@field neogit? boolean
---@field noice? boolean
---@field notify? boolean
---@field rainbow_delimiters? boolean
---@field telescope? boolean
---@field treesitter? boolean
---@field treesittercontext? boolean
---@field trouble? boolean
---@field whichkey? boolean
---@field nvim_notify? boolean

---@class Config
---@field transparent? boolean
---@field italic_comments? boolean
---@field hide_fillchars? boolean
---@field borderless_telescope? boolean | { border: boolean, style: RakisTelescopeStyle }
---@field terminal_colors? boolean
---@field theme? ThemeConfig
---@field extensions? extensions
local default_options = {
  transparent = false,
  italic_comments = false,
  hide_fillchars = false,
  borderless_telescope = true,
  terminal_colors = true,
  cache = false,

  theme = {
    variant = "auto",
    colors = {},
    highlights = {},
  },

  extensions = {
    alpha = true,
    cmp = true,
    dashboard = true,
    -- fzflua = true,
    -- gitpad = true,
    gitsigns = true,
    -- grapple = true,
    -- grugfar = true,
    -- heirline = true,
    -- helpview = true,
    -- hop = true,
    -- indentblankline = true,
    -- kubectl = true,
    lazy = true,
    -- leap = true,
    -- markdown = true,
    -- markview = true,
    mini = true,
    -- noice = true,
    -- neogit = true,
    -- notify = true,
    -- rainbow_delimiters = true,
    -- telescope = true,
    treesitter = true,
    -- treesittercontext = true,
    trouble = true,
    whichkey = true,
    nvim_notify = true,
  },
}

---@type Config
M.options = {}

---@param options Config|nil
function M.setup(options)
  M.options = vim.tbl_deep_extend("force", {}, default_options, options or {})
  vim.g.rakis_opts = M.options
end

M.setup()

return M
