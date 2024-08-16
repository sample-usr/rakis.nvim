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
  local t = format_colors(colors[variant])
  local template = [==[
# name: 'rakis'
# url: 'https://github.com/sample-usr/rakis.nvim'
# preferred_background: ${bg}

fish_color_normal ${fg}
fish_color_command ${cyan03}
fish_color_param ${violet03}
fish_color_keyword ${green03}
fish_color_quote ${yellow03}
fish_color_redirection ${blue03}
fish_color_end ${violet03}
fish_color_comment ${base01}
fish_color_error ${red03}
fish_color_gray ${base01}
fish_color_selection --background=${bg_highlight}
fish_color_search_match --background=${bg_highlight}
fish_color_option ${yellow03}
fish_color_operator ${blue03}
fish_color_escape ${violet03}
fish_color_autosuggestion ${base01}
fish_color_cancel ${red03}
fish_color_cwd ${orange03}
fish_color_user ${violet01}
fish_color_host ${green03}
fish_color_host_remote ${yellow03}
fish_color_status ${red03}
fish_pager_color_progress ${base01}
fish_pager_color_prefix ${blue03}
fish_pager_color_completion ${fg}
fish_pager_color_description ${base01}
]==]

  return util.parse_extra_template(template, t)
end

return M
