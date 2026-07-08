local M = {}

--- Get extension configuration
--- @param options Config
--- @param p RakisPalette
function M.get(options, p)
  options = options or {}
  local highlights = {
    AlphaShortcut = { fg = p.spice },
    AlphaHeader = { fg = p.spice },
    AlphaHeaderLabel = { fg = p.glowglobe },
    AlphaFooter = { fg = p.subtle },
    AlphaButtons = { fg = p.text },
  }

  return highlights
end
return M
