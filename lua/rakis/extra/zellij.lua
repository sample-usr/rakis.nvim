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
        fg "${fg}"
        black "${base03}"
        red "${red03}"
        green "${green03}"
        yellow "${yellow03}"
        blue "${blue03}"
        magenta "${magenta03}"
        cyan "${cyan03}"
        white "${fg}"
        orange "${orange03}"
    }
}
]==]

  return util.parse_extra_template(template, colors[variant])
end

return M
