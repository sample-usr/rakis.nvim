local colors = require("rakis.colors")
local util = require("rakis.util")

local M = {}

--- Generate rakis theme for zellij.
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
  local template = [==[
themes {
     {
        bg "${bg}"
        fg "${text}"
        black "${overlay}"
        red "${blood}"
        green "${oasis}"
        yellow "${glowglobe}"
        blue "${ibad}"
        magenta "${dusk}"
        cyan "${water}"
        white "${text}"
        orange "${spice}"
    }
}
]==]

  return util.parse_extra_template(template, colors[variant])
end

return M
