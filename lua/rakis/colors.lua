local util = require("rakis.util")
local hslutil = require("rakis.hsl")
local hsl = hslutil.hslToHex

local M = {}

---@class Palette
M.default = {
  none = "NONE",

  base04 = hsl(12, 30, 4),
  base03 = hsl(12, 30, 10),
  base02 = hsl(12, 50, 24),
  base01 = hsl(14, 20, 40),
  base00 = hsl(14, 20, 60),
  base0 = hsl(16, 24, 70),
  base1 = hsl(18, 40, 72),
  base2 = hsl(20, 60, 80),
  base3 = hsl(22, 70, 88),
  base4 = hsl(30, 89, 93),
  yellow = hsl(40, 90, 50),
  yellow100 = hsl(40, 94, 80),
  yellow300 = hsl(40, 90, 64),
  yellow500 = hsl(40, 90, 50),
  yellow700 = hsl(40, 90, 38),
  yellow900 = hsl(42, 93, 22),
  orange = hsl(27, 100, 42),
  orange100 = hsl(27, 98, 70),
  orange300 = hsl(27, 95, 55),
  orange500 = hsl(27, 100, 42),
  orange700 = hsl(27, 95, 35),
  orange900 = hsl(27, 95, 23),
  red = hsl(4, 80, 45),
  red100 = hsl(4, 95, 78),
  red300 = hsl(4, 90, 65),
  red500 = hsl(4, 80, 45),
  red700 = hsl(4, 72, 37),
  red900 = hsl(4, 70, 22),
  magenta = hsl(355, 34, 45),
  magenta100 = hsl(355, 40, 66),
  magenta300 = hsl(355, 34, 55),
  magenta500 = hsl(355, 34, 45),
  magenta700 = hsl(355, 35, 33),
  magenta900 = hsl(355, 32, 20),
  violet = hsl(264, 30, 44),
  violet100 = hsl(264, 35, 70),
  violet300 = hsl(264, 33, 58),
  violet500 = hsl(264, 30, 44),
  violet700 = hsl(264, 28, 33),
  violet900 = hsl(264, 27, 25),
  blue = hsl(205, 58, 48),
  blue100 = hsl(205, 55, 71),
  blue300 = hsl(205, 56, 60),
  blue500 = hsl(205, 58, 48),
  blue700 = hsl(205, 60, 37),
  blue900 = hsl(205, 65, 27),
  cyan = hsl(185, 40, 40),
  cyan100 = hsl(187, 41, 69),
  cyan300 = hsl(185, 44, 57),
  cyan500 = hsl(185, 40, 40),
  cyan700 = hsl(185, 44, 30),
  cyan900 = hsl(185, 41, 23),
  green = hsl(118, 20, 45),
  green100 = hsl(118, 22, 70),
  green300 = hsl(117, 21, 55),
  green500 = hsl(118, 20, 45),
  green700 = hsl(118, 19, 36),
  green900 = hsl(118, 18, 23),

  bg = hsl(12, 30, 4),
  bg_highlight = hsl(12, 30, 10),
  fg = hsl(20, 30, 55),
}

---@return ColorScheme
function M.setup(opts)
  opts = opts or {}
  local config = require("rakis.config")

  -- local style = config.is_day() and config.options.light_style or config.options.style
  local style = "default"
  local palette = M[style] or {}
  -- if type(palette) == "function" then
  --   palette = palette()
  -- end

  -- Color Palette
  ---@class ColorScheme: Palette
  local colors = vim.tbl_deep_extend("force", vim.deepcopy(M.default), palette)

  util.bg = colors.bg
  util.day_brightness = config.options.day_brightness

  colors.black = util.darken(colors.bg, 0.8, "#000000")
  colors.border = colors.black

  -- Popups and statusline always get a dark background
  colors.bg_popup = colors.base04
  colors.bg_statusline = colors.base03

  -- Sidebar and Floats are configurable
  colors.bg_sidebar = config.options.styles.sidebars == "transparent" and colors.none
    or config.options.styles.sidebars == "dark" and colors.base04
    or colors.bg

  colors.bg_float = config.options.styles.floats == "transparent" and colors.none
    or config.options.styles.floats == "dark" and colors.base04
    or colors.bg

  -- colors.fg_float = config.options.styles.floats == "dark" and colors.base01 or colors.fg
  colors.fg_float = colors.fg

  colors.error = colors.red500
  colors.warning = colors.yellow500
  colors.info = colors.blue500
  colors.hint = colors.cyan500

  config.options.on_colors(colors)
  if opts.transform and config.is_day() then
    util.invert_colors(colors)
  end

  return colors
end

return M
