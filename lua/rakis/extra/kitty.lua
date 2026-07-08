local colors = require("rakis.colors")
local util = require("rakis.util")

local M = {}

--- Generate the theme for kitty.
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
  local t = util.with_terminal_brights(colors[variant])
  -- variant is not in the palette table, inject it manually
  t = vim.tbl_extend("force", t, { variant = variant })
  local template = [==[
# rakis-${variant} theme for kitty
foreground ${text}
background ${bg}
selection_foreground ${text}
selection_background ${highlight}

cursor ${text}
cursor_text_color ${bg}

url_color ${ibad}

active_border_color ${spice}
inactive_border_color ${overlay}
bell_border_color ${glowglobe}

active_tab_foreground ${text}
active_tab_background ${overlay}
inactive_tab_foreground ${subtle}
inactive_tab_background ${surface}
tab_bar_background ${bg}

color0 ${bg}
color8 ${muted}

color1 ${blood}
color9 ${blood_bright}

color2 ${oasis}
color10 ${oasis_bright}

color3 ${glowglobe}
color11 ${glowglobe_bright}

color4 ${ibad}
color12 ${ibad_bright}

color5 ${dusk}
color13 ${dusk_bright}

color6 ${water}
color14 ${water_bright}

color7 ${text}
color15 ${text_bright}
]==]

  return util.parse_extra_template(template, t)
end

return M
