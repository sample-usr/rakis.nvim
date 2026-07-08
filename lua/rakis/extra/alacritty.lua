local colors = require("rakis.colors")
local util = require("rakis.util")

local M = {}

--- Generate the theme for alacritty.
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
  local t = util.with_terminal_brights(colors[variant])
  -- variant is not in the palette table, inject it manually
  t = vim.tbl_extend("force", t, { variant = variant })
  local template = [==[
# rakis-${variant} theme for alacritty
[colors.primary]
background = "${bg}"
foreground = "${text}"

[colors.cursor]
text = "${bg}"
cursor = "${text}"

[colors.selection]
text = "${text}"
background = "${highlight}"

[colors.search.matches]
foreground = "${bg}"
background = "${subtle}"

[colors.search.focused_match]
foreground = "${bg}"
background = "${glowglobe}"

[colors.normal]
black = "${bg}"
red = "${blood}"
green = "${oasis}"
yellow = "${glowglobe}"
blue = "${ibad}"
magenta = "${dusk}"
cyan = "${water}"
white = "${text}"

[colors.bright]
black = "${muted}"
red = "${blood_bright}"
green = "${oasis_bright}"
yellow = "${glowglobe_bright}"
blue = "${ibad_bright}"
magenta = "${dusk_bright}"
cyan = "${water_bright}"
white = "${text_bright}"
]==]

  return util.parse_extra_template(template, t)
end

return M
