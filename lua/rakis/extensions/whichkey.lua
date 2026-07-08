local M = {}

--- Get extension configuration
--- @param options Config
--- @param p RakisPalette
function M.get(options, p)
  options = options or {}
  local highlights = {
    WhichKey = { fg = p.water },
    WhichKeyGroup = { fg = p.dusk },
    WhichKeyDesc = { fg = p.dusk },
    WhichKeySeperator = { fg = p.bg },
    WhichKeyFloat = { bg = p.bg },
    WhichKeyValue = { fg = p.dusk },
  }

  return highlights
end
return M
