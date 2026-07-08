local util = require("rakis.util")
local M = {}

--- Get extension configuration
--- @param opts Config
--- @param t RakisPalette
function M.get(opts, t)
  opts = opts or {}
  local highlights = {
    GitSignsAdd = { fg = t.oasis },
    GitSignsChange = { fg = t.spice },
    GitSignsDelete = { fg = t.blood },

    GitSignsAddLn = { link = "DiffAdd" },
    GitSignsChangeLn = { link = "DiffChange" },
    GitSignsDeleteLn = { link = "DiffDelete" },

    GitSignsAddInline = { bg = util.blend(t.bg_solid, t.oasis, 0.9) },
    GitSignsChangeInline = { bg = util.blend(t.bg_solid, t.ibad, 0.9) },
    GitSignsDeleteInline = { bg = util.blend(t.bg_solid, t.blood, 0.9) },

    GitSignsCurrentLineBlame = { link = "LineNr" },
  }

  return highlights
end
return M
