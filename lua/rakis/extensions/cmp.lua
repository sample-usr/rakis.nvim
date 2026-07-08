local M = {}

--- Get extension configuration
--- @param options Config
--- @param p RakisPalette
function M.get(options, p)
  options = options or {}
  local highlights = {
    CmpDocumentation = { fg = p.text, bg = p.surface },
    CmpDocumentationBorder = { fg = p.muted, bg = p.surface },
    CmpGhostText = { fg = p.muted, italic = true },
    CmpItemAbbr = { fg = p.text, bg = p.surface },
    CmpItemAbbrDeprecated = { fg = p.muted, bg = p.surface, strikethrough = true },
    CmpItemAbbrMatch = { fg = p.spice, bg = p.surface, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = p.spice, bg = p.surface, bold = true },
    CmpItemKindVariable = { fg = p.text, bg = p.surface },
    CmpItemKindInterface = { fg = p.water, bg = p.surface },
    CmpItemKindText = { fg = p.oasis, bg = p.surface },
    CmpItemKindFunction = { fg = p.ibad, bg = p.surface },
    CmpItemKindMethod = { fg = p.ibad, bg = p.surface },
    CmpItemKindKeyword = { fg = p.spice, bg = p.surface },
    CmpItemKindProperty = { fg = p.water, bg = p.surface },
    CmpItemKindUnit = { fg = p.glowglobe, bg = p.surface },
    CmpItemMenu = { fg = p.muted, bg = p.surface },
    CmpItemKindDefault = { fg = p.muted, bg = p.surface },
  }

  return highlights
end
return M
