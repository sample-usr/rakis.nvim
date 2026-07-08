local colors = require("rakis.colors")
local util = require("rakis.util")

local M = {}

--- Generate the theme for lazygit
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
  local template = [==[
# yaml-language-server: $schema=https://raw.githubusercontent.com/jesseduffield/lazygit/master/schema/config.json
# rakis theme for lazygit
gui:
    border: rounded
    theme:
        activeBorderColor:
            - "${spice}"
        inactiveBorderColor:
            - "${subtle}"
        searchingActiveBorderColor:
            - "${water}"
        optionsTextColor:
            - "${muted}"
        selectedLineBgColor:
            - "${highlight}"
        cherryPickedCommitBgColor:
            - "${highlight}"
        cherryPickedCommitFgColor:
            - "${blood_bright}"
        unstagedChangesColor:
            - "${glowglobe}"
        defaultFgColor:
            - "${text}"
]==]

  return util.parse_extra_template(template, util.with_terminal_brights(colors[variant]))
end

return M
