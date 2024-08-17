local util = require("rakis.util")
local M = {}

--- Get extension configuration
--- @param opts Config
--- @param t RakisPalette
function M.get(opts, t)
  opts = opts or {}
  local highlights = {
    GitSignsAdd = { fg = t.green02 },
    GitSignsChange = { fg = t.orange02 },
    GitSignsDelete = { fg = t.red02 },

    GitSignsAddLn = { link = "DiffAdd" },
    GitSignsChangeLn = { link = "DiffChange" },
    GitSignsDeleteLn = { link = "DiffDelete" },

    GitSignsAddInline = { bg = util.blend(t.bg_solid, t.green02, 0.9) },
    GitSignsChangeInline = { bg = util.blend(t.bg_solid, t.blue02, 0.9) },
    GitSignsDeleteInline = { bg = util.blend(t.bg_solid, t.red02, 0.9) },

    GitSignsCurrentLineBlame = { link = "LineNr" },
  }

  return highlights
end
return M
