local colors = require("rakis.colors")
local util = require("rakis.util")

local M = {}

--- Generate the theme for ghostty.
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
  local t = util.with_terminal_brights(colors[variant])
  -- variant is not in the palette table, inject it manually
  t = vim.tbl_extend("force", t, { variant = variant })
  local template = [==[
# rakis-${variant} theme for ghostty
palette = 0=${bg}
palette = 1=${blood}
palette = 2=${oasis}
palette = 3=${glowglobe}
palette = 4=${ibad}
palette = 5=${dusk}
palette = 6=${water}
palette = 7=${text}
palette = 8=${subtle}
palette = 9=${blood_bright}
palette = 10=${oasis_bright}
palette = 11=${glowglobe_bright}
palette = 12=${ibad_bright}
palette = 13=${dusk_bright}
palette = 14=${water_bright}
palette = 15=${text_bright}

background = ${bg}
foreground = ${text}
cursor-color = ${text}
cursor-text = ${bg}
selection-background = ${highlight}
selection-foreground = ${text}
]==]

  return util.parse_extra_template(template, t)
end

return M
