local colors = require("rakis.colors")
local util = require("rakis.util")

local M = {}
--- Generate rakis theme for wezterm.
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
  local template = [==[
-- rakis theme for wezterm
return {
    foreground = "${text}",
    background = "${bg}",

    cursor_bg = "${text}",
    cursor_fg = "${bg}",
    cursor_border = "${text}",

    selection_fg = "${text}",
    selection_bg = "${highlight}",

    scrollbar_thumb = "${bg}",
    split = "${bg}",

    ansi = { "${bg}", "${blood}", "${oasis}", "${glowglobe}", "${ibad}", "${dusk}", "${water}", "${text_bright}" },
    brights = { "${subtle}", "${blood_bright}", "${oasis_bright}", "${glowglobe_bright}", "${ibad_bright}", "${dusk_bright}", "${water_bright}", "${text_bright}" },
    indexed = { [16] = "${spice}", [17] = "${blood}" },
}
]==]

  return util.parse_extra_template(template, util.with_terminal_brights(colors[variant]))
end

return M
