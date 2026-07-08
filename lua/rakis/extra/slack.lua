local colors = require("rakis.colors")
local util = require("rakis.util")

local M = {}

--- Generate the theme for Slack.
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
  local t = colors[variant]
  -- Slack 4-color import format: System navigation, Selected items, Presence, Notifications
  local template = [==[# rakis-${variant} Slack theme
# Paste the string below into Slack's "Import theme" dialog
# (Preferences > Sidebar > Customize your theme > Import theme)

${bg},${spice},${bloom},${blood}
]==]

  -- variant is not in the palette table, inject it manually
  local ctx = vim.tbl_extend("force", t, { variant = variant })
  return util.parse_extra_template(template, ctx)
end

return M
