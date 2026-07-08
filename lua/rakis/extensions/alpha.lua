local M = {}

--- Get extension configuration
--- @param options Config
--- @param p RakisPalette
function M.get(options, p)
  options = options or {}
  local highlights = {
    AlphaShortcut = { fg = p.muted },
    AlphaHeader = { fg = p.spice },
    AlphaHeaderLabel = { fg = p.bloom },
    AlphaFooter = { fg = p.water },
    AlphaButtons = { fg = p.glowglobe },
  }

  return highlights
end
return M
