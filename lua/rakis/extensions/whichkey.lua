local M = {}

--- Get extension configuration
--- @param options Config
--- @param p RakisPalette
function M.get(options, p)
  options = options or {}
  local highlights = {
    WhichKey = { fg = p.water },
    WhichKeyGroup = { fg = p.dusk },
    WhichKeyDesc = { fg = p.text },
    WhichKeySeperator = { fg = p.muted },
    WhichKeyFloat = { bg = p.surface },
    WhichKeyValue = { fg = p.subtle },
  }

  return highlights
end
return M
