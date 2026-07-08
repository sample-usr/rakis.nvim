local colors = require("rakis.colors")
local util = require("rakis.util")

local M = {}

--- Generate the theme for tmux.
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
  local t = colors[variant]
  -- variant is not in the palette table, inject it manually
  t = vim.tbl_extend("force", t, { variant = variant })
  local template = [==[
# rakis-${variant} theme for tmux
# Source in your tmux.conf:
#   source-file path/to/rakis.conf
set -g mode-style "fg=${bg},bg=${glowglobe}"
set -g message-style "fg=${text},bg=${overlay}"
set -g message-command-style "fg=${text},bg=${overlay}"

set -g pane-border-style "fg=${overlay}"
set -g pane-active-border-style "fg=${spice}"

set -g status-style "fg=${subtle},bg=${surface}"
set -g status-left "#[fg=${bg},bg=${spice},bold] #S "
set -g status-right "#[fg=${subtle},bg=${surface}] %Y-%m-%d %H:%M #[fg=${bg},bg=${spice},bold] #h "

set -g window-status-format "#[fg=${subtle},bg=${surface}] #I #W "
set -g window-status-current-format "#[fg=${text},bg=${overlay},bold] #I #W "
set -g window-status-separator ""
set -g window-status-activity-style "fg=${glowglobe},bg=${surface}"
set -g window-status-bell-style "fg=${blood},bg=${surface}"

set -g clock-mode-colour "${spice}"
set -g copy-mode-match-style "fg=${bg},bg=${subtle}"
set -g copy-mode-current-match-style "fg=${bg},bg=${glowglobe}"
]==]

  return util.parse_extra_template(template, t)
end

return M
