local colors = require("rakis.colors")
local util = require("rakis.util")

local M = {}

--- Generate the theme for ghostty.
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
  local t = colors[variant]
  local template = [==[
# rakis theme for ghostty
palette = 0=${bg}
palette = 1=${red03}
palette = 2=${green03}
palette = 3=${yellow03}
palette = 4=${blue03}
palette = 5=${magenta03}
palette = 6=${cyan03}
palette = 7=${fg}
palette = 8=${bg_highlight}
palette = 9=${red01}
palette = 10=${green01}
palette = 11=${yellow01}
palette = 12=${blue01}
palette = 13=${magenta01}
palette = 14=${cyan01}
palette = 15=${fg}

background = ${bg}
foreground = ${fg}
cursor-color = ${fg}
selection-background = ${bg_highlight}
selection-foreground = ${fg}
]==]

  return util.parse_extra_template(template, t)
end

return M
