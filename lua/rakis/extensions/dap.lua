local M = {}

--- Get nvim-dap-ui highlights
--- rcarriga/nvim-dap-ui - debugging UI
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- Breakpoints
    DapUIBreakpointsCurrentLine = { fg = p.glowglobe, bold = true },
    DapUIBreakpointsDisabledLine = { fg = p.subtle },
    DapUIBreakpointsInfo = { link = "DapUIThread" },
    DapUIBreakpointsLine = { link = "DapUIBreakpointsPath" },
    DapUIBreakpointsPath = { fg = p.water },

    -- UI elements
    DapUIDecoration = { link = "DapUIBreakpointsPath" },
    DapUIFloatBorder = { fg = p.highlight, bg = p.surface },
    DapUIFloatNormal = { bg = p.surface },
    DapUIFrameName = { fg = p.text },
    DapUILineNumber = { link = "DapUIBreakpointsPath" },
    DapUIModifiedValue = { fg = p.water, bold = true },
    DapUIPlayPause = { fg = p.oasis },
    DapUIRestart = { fg = p.oasis },
    DapUIScope = { link = "DapUIBreakpointsPath" },
    DapUISource = { fg = p.dusk },
    DapUIStepBack = { fg = p.water },
    DapUIStepInto = { fg = p.water },
    DapUIStepOut = { fg = p.water },
    DapUIStepOver = { fg = p.water },
    DapUIStop = { fg = p.blood },
    DapUIStoppedThread = { link = "DapUIBreakpointsPath" },
    DapUIThread = { fg = p.glowglobe },
    DapUIType = { fg = p.dusk },
    DapUIUnavailable = { fg = p.subtle },
    DapUIValue = { fg = p.text },
    DapUIVariable = { fg = p.text },
    DapUIWatchesEmpty = { fg = p.blood },
    DapUIWatchesError = { link = "DapUIWatchesEmpty" },
    DapUIWatchesValue = { link = "DapUIThread" },

    -- REPL
    DapUIConsole = { fg = p.text },
    DapUIConsoleNC = { fg = p.text },
  }
  return highlights
end

return M
