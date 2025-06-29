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
}

---@class RakisColors
---@field light RakisPalette
M.light = {
  bg = hsl(45, 25, 92),
  bg_secondary = hsl(42, 20, 88),
  bg_highlight = hsl(38, 30, 85),
  fg = hsl(28, 60, 15),
  base01 = hsl(35, 45, 45),
  base02 = hsl(25, 55, 20),
  base03 = hsl(40, 25, 70),
  yellow01 = hsl(45, 95, 35),
  yellow02 = hsl(42, 90, 28),
  yellow03 = hsl(40, 85, 22),
  orange01 = hsl(15, 100, 40),
  orange02 = hsl(12, 95, 32),
  orange03 = hsl(10, 90, 25),
  red01 = hsl(0, 95, 40),
  red02 = hsl(355, 90, 32),
  red03 = hsl(350, 85, 25),
  magenta01 = hsl(300, 80, 35),
  magenta02 = hsl(295, 75, 28),
  magenta03 = hsl(290, 70, 22),
  magenta04 = hsl(285, 65, 18),
  violet01 = hsl(240, 85, 35),
  violet02 = hsl(235, 80, 28),
  violet03 = hsl(230, 75, 22),
  blue01 = hsl(210, 90, 35),
  blue02 = hsl(205, 85, 28),
  blue03 = hsl(200, 80, 22),
  cyan01 = hsl(180, 85, 32),
  cyan02 = hsl(175, 80, 26),
  cyan03 = hsl(170, 75, 20),
  green01 = hsl(120, 80, 30),
  green02 = hsl(115, 75, 24),
  green03 = hsl(110, 70, 18),
}

return M
