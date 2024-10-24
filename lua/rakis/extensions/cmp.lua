local M = {}

--- Get extension configuration
--- @param options Config
--- @param p RakisPalette
function M.get(options, p)
  options = options or {}
  local highlights = {
    CmpDocumentation = { fg = p.base02, bg = p.bg },
    CmpDocumentationBorder = { fg = p.base02, bg = p.bg },
    CmpGhostText = { fg = p.base02, bg = p.bg },
    CmpItemAbbr = { fg = p.fg, bg = p.bg },
    CmpItemAbbrDeprecated = { fg = p.base02, bg = p.bg, strikethrough = true },
    CmpItemAbbrMatch = { fg = p.magenta03, bg = p.bg },
    CmpItemAbbrMatchFuzzy = { fg = p.magenta03, bg = p.bg },
    CmpItemKindVariable = { fg = p.cyan03, bg = p.bg },
    CmpItemKindInterface = { fg = p.cyan03, bg = p.bg },
    CmpItemKindText = { fg = p.cyan03, bg = p.bg },
    CmpItemKindFunction = { fg = p.violet02, bg = p.bg },
    CmpItemKindMethod = { fg = p.violet02, bg = p.bg },
    CmpItemKindKeyword = { fg = p.fg, bg = p.bg },
    CmpItemKindProperty = { fg = p.fg, bg = p.bg },
    CmpItemKindUnit = { fg = p.fg, bg = p.bg },
    CmpItemMenu = { fg = p.base02, bg = p.bg },
    CmpItemKindDefault = { fg = p.base02, bg = p.bg },
  }

  return highlights
end
return M
