local colors = require("rakis.colors")
local util = require("rakis.util")

local M = {}

--- Generate rakis theme for wezterm.
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
  local template = [==[
-- rakis theme for wezterm
return {
    foreground = "${fg}",
    background = "${bg}",

    cursor_bg = "${fg}",
    cursor_fg = "${bg}",
    cursor_border = "${fg}",

    selection_fg = "${fg}",
    selection_bg = "${bg_highlight}",

    scrollbar_thumb = "${bg}",
    split = "${bg}",

    ansi = { "${bg}", "${red03}", "${green03}", "${yellow03}", "${blue03}", "${violet03}", "${cyan03}", "${fg}" },
    brights = { "${bg_highlight}", "${red01}", "${green01}", "${yellow01}", "${blue01}", "${violet01}", "${cyan01}", "${fg}" },
    indexed = { [16] = "${orange03}", [17] = "${red03}" },
}
]==]

  return util.parse_extra_template(template, colors[variant])
end

return M
