local colors = require("rakis.colors")

local M = {}
function M.setup()
  local config = require("rakis.config")
  local opts = config.options

  local theme = {}
  ---@type RakisPalette
  local t = colors.default
  if opts.theme.variant == "light" then
    ---@type RakisPalette
    t = colors.light
  end

  if opts.theme.variant == "auto" then
    if vim.o.background == "light" then
      ---@type RakisPalette
      t = colors.light
    end
  end

  -- Override colors with user defined colors
  ---@type RakisPalette
  t = vim.tbl_deep_extend("force", t, opts.theme.colors)

  t.bg_solid = t.bg ~= "NONE" and t.bg or t.bg_secondary
  if opts.transparent then
    t.bg = "NONE"
  end

  if opts.hide_fillchars then
    vim.opt.fillchars:append({
      horiz = " ",
      horizup = " ",
      horizdown = " ",
      vert = " ",
      vertleft = " ",
      vertright = " ",
      verthoriz = " ",
      eob = " ",
    })
  else
    vim.opt.fillchars:append({
      eob = " ",
    })
  end

  if opts.terminal_colors then
    vim.g.terminal_color_0 = t.bg
    vim.g.terminal_color_8 = t.bg_secondary

    vim.g.terminal_color_7 = t.fg
    vim.g.terminal_color_15 = t.base01

    vim.g.terminal_color_1 = t.red03
    vim.g.terminal_color_9 = t.red01

    vim.g.terminal_color_2 = t.green03
    vim.g.terminal_color_10 = t.green01

    vim.g.terminal_color_3 = t.yellow03
    vim.g.terminal_color_11 = t.yellow01

    vim.g.terminal_color_4 = t.blue03
    vim.g.terminal_color_12 = t.blue01

    vim.g.terminal_color_5 = t.violet03
    vim.g.terminal_color_13 = t.violet01

    vim.g.terminal_color_6 = t.cyan03
    vim.g.terminal_color_14 = t.cyan01
  end

  -- Load base theme
  theme.highlights = require("rakis.extensions.base").get(opts, t)

  -- Load enabled extensions
  local extensions = opts.extensions or {}
  for extension, enabled in pairs(extensions) do
    if enabled then
      local ext = require("rakis.extensions." .. extension)
      theme.highlights = vim.tbl_deep_extend("force", theme.highlights, ext.get(opts, t))
    end
  end

  -- Parse user defined overrides and apply them
  local overrides = opts.theme.overrides or opts.theme.highlights
  if type(overrides) == "function" then
    overrides = overrides(t)
  end
  theme.highlights = vim.tbl_deep_extend("force", theme.highlights, overrides or {})

  return theme
end

return M
