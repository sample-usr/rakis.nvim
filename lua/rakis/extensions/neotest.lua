local M = {}

--- Get neotest highlights
--- nvim-neotest/neotest - testing framework
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- Test status
    NeotestPassed = { fg = p.green03 },
    NeotestFailed = { fg = p.red03 },
    NeotestRunning = { fg = p.yellow03 },
    NeotestSkipped = { fg = p.base01 },
    NeotestUnknown = { fg = p.base01 },
    NeotestWatching = { fg = p.violet03 },

    -- UI elements
    NeotestAdapterName = { fg = p.violet03 },
    NeotestBorder = { fg = p.bg_highlight },
    NeotestDir = { fg = p.cyan03 },
    NeotestExpandMarker = { fg = p.bg_highlight },
    NeotestFile = { fg = p.fg },
    NeotestFocused = { fg = p.yellow03, bg = p.bg_highlight },
    NeotestIndent = { fg = p.bg_highlight },
    NeotestMarked = { fg = p.orange03, bold = true },
    NeotestNamespace = { fg = p.cyan03 },
    NeotestTarget = { fg = p.red03 },
    NeotestTest = { fg = p.fg },
    NeotestWinSelect = { fg = p.base01 },

    -- Icons
    NeotestPassedIcon = { fg = p.green03 },
    NeotestFailedIcon = { fg = p.red03 },
    NeotestRunningIcon = { fg = p.yellow03 },
    NeotestSkippedIcon = { fg = p.base01 },
  }
  return highlights
end

return M
