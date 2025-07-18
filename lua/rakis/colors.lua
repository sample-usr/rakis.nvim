local hslutil = require("rakis.hsl")
local hsl = hslutil.hslToHex

---@class RakisColors
local M = {}

---@class RakisPalette
---@field none string
---@field bg string
---@field bg_secondary string
---@field bg_highlight string
---@field bg_solid? string
---@field fg string
---@field base01 string
---@field base02 string
---@field base03 string
---@field yellow01 string
---@field yellow02 string
---@field yellow03 string
---@field orange01 string
---@field orange02 string
---@field orange03 string
---@field red01 string
---@field red02 string
---@field red03 string
---@field magenta01 string
---@field magenta02 string
---@field magenta03 string
---@field magenta04 string
---@field violet01 string
---@field violet02 string
---@field violet03 string
---@field blue01 string
---@field blue02 string
---@field blue03 string
---@field cyan01 string
---@field cyan02 string
---@field cyan03 string
---@field green01 string
---@field green02 string
---@field green03 string
---@field terminal_fg_bright string

---@class RakisColors
---@field default RakisPalette
M.default = {
  none = "NONE",
  bg = hsl(18, 20, 6),
  bg_secondary = hsl(18, 20, 10),
  bg_highlight = hsl(12, 30, 17),
  fg = hsl(20, 30, 55),
  base01 = hsl(14, 20, 41),
  base02 = hsl(12, 50, 25),
  base03 = hsl(12, 30, 12),
  yellow01 = hsl(40, 94, 80),
  yellow02 = hsl(40, 90, 64),
  yellow03 = hsl(40, 90, 50),
  orange01 = hsl(27, 98, 70),
  orange02 = hsl(27, 95, 55),
  orange03 = hsl(27, 100, 42),
  red01 = hsl(4, 95, 78),
  red02 = hsl(4, 90, 65),
  red03 = hsl(4, 80, 55),
  magenta01 = hsl(355, 40, 66),
  magenta02 = hsl(355, 34, 55),
  magenta03 = hsl(355, 34, 45),
  magenta04 = hsl(355, 35, 33),
  violet01 = hsl(264, 35, 70),
  violet02 = hsl(264, 33, 58),
  violet03 = hsl(264, 30, 44),
  blue01 = hsl(205, 55, 71),
  blue02 = hsl(205, 56, 60),
  blue03 = hsl(205, 58, 48),
  cyan01 = hsl(187, 41, 69),
  cyan02 = hsl(185, 44, 57),
  cyan03 = hsl(185, 40, 40),
  green01 = hsl(118, 22, 70),
  green02 = hsl(117, 21, 55),
  green03 = hsl(118, 20, 45),
  terminal_fg_bright = hsl(35, 18, 58),
}

---@class RakisColors
---@field light RakisPalette
M.light = {
  bg = hsl(35, 58, 88),
  bg_secondary = hsl(30, 42, 82),
  bg_highlight = hsl(30, 38, 77),
  fg = hsl(0, 0, 15),
  base01 = hsl(20, 10, 37),
  base02 = hsl(30, 70, 47),
  base03 = hsl(37, 40, 76),
  yellow01 = hsl(43, 92, 38),
  yellow02 = hsl(43, 88, 32),
  yellow03 = hsl(43, 85, 26),
  orange01 = hsl(23, 75, 45),
  orange02 = hsl(18, 72, 40),
  orange03 = hsl(18, 70, 34),
  red01 = hsl(0, 78, 44),
  red02 = hsl(0, 75, 38),
  red03 = hsl(0, 72, 32),
  magenta01 = hsl(320, 48, 40),
  magenta02 = hsl(320, 45, 34),
  magenta03 = hsl(320, 42, 28),
  magenta04 = hsl(285, 92, 24),
  violet01 = hsl(258, 68, 48),
  violet02 = hsl(258, 65, 40),
  violet03 = hsl(258, 62, 32),
  blue01 = hsl(223, 78, 40),
  blue02 = hsl(223, 75, 34),
  blue03 = hsl(223, 72, 28),
  cyan01 = hsl(195, 52, 40),
  cyan02 = hsl(172, 48, 38),
  cyan03 = hsl(195, 45, 32),
  green01 = hsl(118, 38, 40),
  green02 = hsl(118, 25, 34),
  green03 = hsl(118, 18, 28),
  terminal_fg_bright = hsl(0, 0, 38),
}

return M
