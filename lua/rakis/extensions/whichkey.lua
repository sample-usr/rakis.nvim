local M = {}

--- Get extension configuration
--- @param options Config
--- @param p RakisPalette
function M.get(options, p)
  options = options or {}
  local highlights = {
    WhichKey = { fg = p.cyan03 },
    WhichKeyGroup = { fg = p.violet02 },
    WhichKeyDesc = { fg = p.violet03 },
    WhichKeySeperator = { fg = p.bg },
    WhichKeyFloat = { bg = p.bg },
    WhichKeyValue = { fg = p.violet02 },
  }

  return highlights
end
return M
