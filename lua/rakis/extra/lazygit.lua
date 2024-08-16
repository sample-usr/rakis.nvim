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
            - "${magenta03}"
        inactiveBorderColor:
            - "${base01}"
        searchingActiveBorderColor:
            - "${cyan03}"
        optionsTextColor:
            - "${bg_highlight}"
        selectedLineBgColor:
            - "${bg_highlight}"
        cherryPickedCommitBgColor:
            - "${bg_highlight}"
        cherryPickedCommitFgColor:
            - "${red01}"
        unstagedChangesColor:
            - "${yellow02}"
        defaultFgColor:
            - "${fg}"
]==]

  return util.parse_extra_template(template, colors[variant])
end

return M
