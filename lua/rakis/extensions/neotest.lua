local M = {}

--- Get neotest highlights
--- nvim-neotest/neotest - testing framework
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- Test status
    NeotestPassed = { fg = p.oasis },
    NeotestFailed = { fg = p.blood },
    NeotestRunning = { fg = p.glowglobe },
    NeotestSkipped = { fg = p.subtle },
    NeotestUnknown = { fg = p.subtle },
    NeotestWatching = { fg = p.dusk },

    -- UI elements
    NeotestAdapterName = { fg = p.dusk },
    NeotestBorder = { fg = p.highlight },
    NeotestDir = { fg = p.water },
    NeotestExpandMarker = { fg = p.faint },
    NeotestFile = { fg = p.text },
    NeotestFocused = { fg = p.glowglobe, bg = p.overlay },
    NeotestIndent = { fg = p.faint },
    NeotestMarked = { fg = p.spice, bold = true },
    NeotestNamespace = { fg = p.water },
    NeotestTarget = { fg = p.blood },
    NeotestTest = { fg = p.text },
    NeotestWinSelect = { fg = p.subtle },

    -- Icons
    NeotestPassedIcon = { fg = p.oasis },
    NeotestFailedIcon = { fg = p.blood },
    NeotestRunningIcon = { fg = p.glowglobe },
    NeotestSkippedIcon = { fg = p.subtle },
  }
  return highlights
end

return M
