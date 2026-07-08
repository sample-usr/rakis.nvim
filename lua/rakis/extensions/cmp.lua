local M = {}

--- Get extension configuration
--- @param options Config
--- @param p RakisPalette
function M.get(options, p)
  options = options or {}
  local highlights = {
    CmpDocumentation = { fg = p.muted, bg = p.bg },
    CmpDocumentationBorder = { fg = p.muted, bg = p.bg },
    CmpGhostText = { fg = p.muted, bg = p.bg },
    CmpItemAbbr = { fg = p.text, bg = p.bg },
    CmpItemAbbrDeprecated = { fg = p.muted, bg = p.bg, strikethrough = true },
    CmpItemAbbrMatch = { fg = p.bloom, bg = p.bg },
    CmpItemAbbrMatchFuzzy = { fg = p.bloom, bg = p.bg },
    CmpItemKindVariable = { fg = p.water, bg = p.bg },
    CmpItemKindInterface = { fg = p.water, bg = p.bg },
    CmpItemKindText = { fg = p.water, bg = p.bg },
    CmpItemKindFunction = { fg = p.dusk, bg = p.bg },
    CmpItemKindMethod = { fg = p.dusk, bg = p.bg },
    CmpItemKindKeyword = { fg = p.text, bg = p.bg },
    CmpItemKindProperty = { fg = p.text, bg = p.bg },
    CmpItemKindUnit = { fg = p.text, bg = p.bg },
    CmpItemMenu = { fg = p.muted, bg = p.bg },
    CmpItemKindDefault = { fg = p.muted, bg = p.bg },
  }

  return highlights
end
return M
