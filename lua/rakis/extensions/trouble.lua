local M = {}

--- Get extension configuration
--- @param options Config
--- @param p RakisPalette
function M.get(options, p)
  options = options or {}
  local highlights = {
    TroubleCode = { fg = p.water },
    TroubleCount = { bg = p.overlay, bold = true },
    TroubleDirectory = { fg = p.subtle, bold = true },
    TroubleFilename = { fg = p.water },
    TroubleIconArray = { fg = p.dusk },
    TroubleIconBoolean = { link = "Boolean" },
    TroubleIconConstant = { link = "Constant" },
    TroubleIconDirectory = { fg = p.ibad },
    TroubleIconEvent = { link = "Special" },
    TroubleIconField = { link = "@variable.member" },
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
