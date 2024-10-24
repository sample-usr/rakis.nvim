local M = {}

--- Get extension configuration
--- @param options Config
--- @param p RakisPalette
function M.get(options, p)
  options = options or {}
  local highlights = {
    TroubleCode = { fg = p.magenta03 },
    TroubleCount = { bg = p.bg_highlight, bold = true },
    TroubleDirectory = { fg = p.base02, bold = true },
    TroubleFilename = { fg = p.cyan03 },
    TroubleIconArray = { fg = p.violet02 },
    TroubleIconBoolean = { link = "Boolean" },
    TroubleIconConstant = { link = "Constant" },
    TroubleIconDirectory = { fg = p.violet02 },
    TroubleIconEvent = { link = "Special" },
    TroubleIconField = { link = "Boolean" },
    TroubleIconFile = { link = "Normal" },
    TroubleIconFunction = { link = "@function" },
    TroubleIndent = { link = "LineNr" },
    TroubleIndentFoldClosed = { link = "CursorLineNr" },
    TroublePos = { link = "LineNr" },
    TroublePreview = { link = "Visual" },
    TroubleSource = { link = "Comment" },
  }

  return highlights
end
return M
