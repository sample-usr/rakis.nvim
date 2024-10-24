local M = {}

--- Get extension configuration
--- @param options Config
--- @param p RakisPalette
function M.get(options, p)
  options = options or {}
  local highlights = {
    NotifyERRORBorder = { fg = p.red02 },
    NotifyWARNBorder = { fg = p.yellow02 },
    NotifyINFOBorder = { fg = p.green02 },
    NotifyDEBUGBorder = { fg = p.cyan02 },
    NotifyTRACEBorder = { fg = p.violet02 },
    NotifyERRORIcon = { fg = p.red02 },
    NotifyWARNIcon = { fg = p.yellow02 },
    NotifyINFOIcon = { fg = p.green02 },
    NotifyDEBUGIcon = { fg = p.cyan02 },
    NotifyTRACEIcon = { fg = p.violet02 },
    NotifyERRORTitle = { fg = p.red02 },
    NotifyWARNTitle = { fg = p.yellow02 },
    NotifyINFOTitle = { fg = p.green02 },
    NotifyDEBUGTitle = { fg = p.cyan02 },
    NotifyTRACETitle = { fg = p.violet02 },
  }

  return highlights
end
return M
