local M = {}

--- Get nvim-dap-ui highlights
--- rcarriga/nvim-dap-ui - debugging UI
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- Breakpoints
    DapUIBreakpointsCurrentLine = { fg = p.yellow03, bold = true },
    DapUIBreakpointsDisabledLine = { fg = p.base01 },
    DapUIBreakpointsInfo = { link = "DapUIThread" },
    DapUIBreakpointsLine = { link = "DapUIBreakpointsPath" },
    DapUIBreakpointsPath = { fg = p.cyan03 },

    -- UI elements
    DapUIDecoration = { link = "DapUIBreakpointsPath" },
    DapUIFloatBorder = { fg = p.bg_highlight, bg = p.bg },
    DapUIFloatNormal = { bg = p.bg },
    DapUIFrameName = { fg = p.fg },
    DapUILineNumber = { link = "DapUIBreakpointsPath" },
    DapUIModifiedValue = { fg = p.cyan03, bold = true },
    DapUIPlayPause = { fg = p.green03 },
    DapUIRestart = { fg = p.green03 },
    DapUIScope = { link = "DapUIBreakpointsPath" },
    DapUISource = { fg = p.violet03 },
    DapUIStepBack = { fg = p.cyan03 },
    DapUIStepInto = { fg = p.cyan03 },
    DapUIStepOut = { fg = p.cyan03 },
    DapUIStepOver = { fg = p.cyan03 },
    DapUIStop = { fg = p.red03 },
    DapUIStoppedThread = { link = "DapUIBreakpointsPath" },
    DapUIThread = { fg = p.yellow03 },
    DapUIType = { fg = p.violet03 },
    DapUIUnavailable = { fg = p.base01 },
    DapUIValue = { fg = p.fg },
    DapUIVariable = { fg = p.fg },
    DapUIWatchesEmpty = { fg = p.red03 },
    DapUIWatchesError = { link = "DapUIWatchesEmpty" },
    DapUIWatchesValue = { link = "DapUIThread" },

    -- REPL
    DapUIConsole = { fg = p.fg },
    DapUIConsoleNC = { fg = p.fg },
  }
  return highlights
end

return M
