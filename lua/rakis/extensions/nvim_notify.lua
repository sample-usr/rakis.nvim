local M = {}

--- Get extension configuration
--- @param options Config
--- @param p RakisPalette
function M.get(options, p)
  options = options or {}
  local highlights = {
    NotifyERRORBorder = { fg = p.blood },
    NotifyWARNBorder = { fg = p.glowglobe },
    NotifyINFOBorder = { fg = p.oasis },
    NotifyDEBUGBorder = { fg = p.water },
    NotifyTRACEBorder = { fg = p.dusk },
    NotifyERRORIcon = { fg = p.blood },
    NotifyWARNIcon = { fg = p.glowglobe },
    NotifyINFOIcon = { fg = p.oasis },
    NotifyDEBUGIcon = { fg = p.water },
    NotifyTRACEIcon = { fg = p.dusk },
    NotifyERRORTitle = { fg = p.blood },
    NotifyWARNTitle = { fg = p.glowglobe },
    NotifyINFOTitle = { fg = p.oasis },
    NotifyDEBUGTitle = { fg = p.water },
    NotifyTRACETitle = { fg = p.dusk },
  }

  return highlights
end
return M
