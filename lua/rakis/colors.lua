local hslutil = require("rakis.hsl")
local hsl = hslutil.hslToHex

---@class RakisColors
local M = {}

---@class RakisPalette
---@field none string
---@field bg string
---@field surface string
---@field overlay string
---@field highlight string
---@field bg_solid? string
---@field text string
---@field subtle string
---@field muted string
---@field faint string
---@field blood string
---@field spice string
---@field glowglobe string
---@field oasis string
---@field water string
---@field ibad string
---@field dusk string
---@field bloom string

-- The palette is drawn from the world of Dune: the dark variant is the deep
-- desert night of a sietch, the light variant the same desert at noon.
-- Accent hues are identical across both variants; only saturation and
-- lightness change. Text roles form a four-step ramp: text > subtle > muted >
-- faint, where faint is reserved for non-text decoration (whitespace chars,
-- indent guides) and never for words.

---@class RakisColors
---@field default RakisPalette
M.default = {
  none = "NONE",
  bg = hsl(20, 25, 5),
  surface = hsl(20, 22, 9),
  overlay = hsl(18, 25, 14),
  highlight = hsl(14, 28, 20),
  text = hsl(30, 32, 64),
  subtle = hsl(25, 20, 50),
  muted = hsl(20, 15, 40),
  faint = hsl(18, 18, 26),
  blood = hsl(358, 72, 60),
  spice = hsl(22, 95, 55),
  glowglobe = hsl(40, 90, 55),
  oasis = hsl(95, 42, 55),
  water = hsl(174, 58, 48),
  ibad = hsl(212, 72, 62),
  dusk = hsl(265, 55, 66),
  bloom = hsl(335, 55, 63),
}

---@class RakisColors
---@field light RakisPalette
M.light = {
  none = "NONE",
  bg = hsl(42, 58, 88),
  surface = hsl(38, 45, 83),
  overlay = hsl(34, 38, 78),
  highlight = hsl(30, 35, 73),
  text = hsl(24, 35, 22),
  subtle = hsl(22, 20, 36),
  muted = hsl(20, 12, 46),
  faint = hsl(30, 15, 62),
  blood = hsl(358, 75, 38),
  spice = hsl(22, 88, 34),
  glowglobe = hsl(40, 95, 28),
  oasis = hsl(95, 50, 28),
  water = hsl(174, 65, 25),
  ibad = hsl(212, 70, 36),
  dusk = hsl(265, 50, 42),
  bloom = hsl(335, 58, 36),
}

return M
