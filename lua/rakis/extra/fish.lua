local colors = require("rakis.colors")
local util = require("rakis.util")

local M = {}

--- Format a color for use in fish.
--- @param hex string: The hex color to format. Must be in the format "#RRGGBB".
local function format_color(hex)
  return string.sub(hex, 2)
end

--- Iterate over the colors in a table and format them.
--- @param t table: The table of colors to format.
local function format_colors(t)
  local formatted = {}
  for k, v in pairs(t) do
    formatted[k] = format_color(v)
  end
  return formatted
end

--- Generate the theme for fish.
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
  local t = format_colors(util.with_terminal_brights(colors[variant]))
  local template = [==[
# name: 'rakis'
# url: 'https://github.com/sample-usr/rakis.nvim'
# preferred_background: ${bg}

fish_color_normal ${text}
fish_color_command ${water}
fish_color_param ${dusk}
fish_color_keyword ${oasis}
fish_color_quote ${glowglobe}
fish_color_redirection ${ibad}
fish_color_end ${dusk}
fish_color_comment ${subtle}
fish_color_error ${blood}
fish_color_gray ${subtle}
fish_color_selection --background=${highlight}
fish_color_search_match --background=${highlight}
fish_color_option ${glowglobe}
fish_color_operator ${ibad}
fish_color_escape ${dusk}
fish_color_autosuggestion ${subtle}
fish_color_cancel ${blood}
fish_color_cwd ${spice}
fish_color_user ${dusk_bright}
fish_color_host ${oasis}
fish_color_host_remote ${glowglobe}
fish_color_status ${blood}
fish_pager_color_progress ${subtle}
fish_pager_color_prefix ${ibad}
fish_pager_color_completion ${text}
fish_pager_color_description ${subtle}
]==]

  return util.parse_extra_template(template, t)
end

return M
