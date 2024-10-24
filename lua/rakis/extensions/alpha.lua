local M = {}

--- Get extension configuration
--- @param options Config
--- @param p RakisPalette
function M.get(options, p)
  options = options or {}
  local highlights = {
    AlphaShortcut = { fg = p.base02 },
    AlphaHeader = { fg = p.orange03 },
    AlphaHeaderLabel = { fg = p.magenta03 },
    AlphaFooter = { fg = p.cyan03 },
    AlphaButtons = { fg = p.yellow03 },
  }

  return highlights
end
return M
