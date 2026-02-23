local M = {}

--- Get grug-far.nvim highlights
--- MagicDuck/grug-far.nvim - search and replace
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- Help
    GrugFarHelpHeader = { fg = p.cyan03, bold = true },
    GrugFarHelpHeaderKey = { fg = p.yellow03 },
    GrugFarHelpWinActionKey = { fg = p.yellow03 },
    GrugFarHelpWinActionPrefix = { fg = p.cyan03 },
    GrugFarHelpWinActionText = { fg = p.fg },
    GrugFarHelpWinHeader = { fg = p.cyan03, bold = true },

    -- Input
    GrugFarInputLabel = { fg = p.cyan03 },
    GrugFarInputPlaceholder = { fg = p.base01, italic = true },

    -- Results
    GrugFarResultsActionMessage = { fg = p.cyan03 },
    GrugFarResultsChangeIndicator = { fg = p.yellow03 },
    GrugFarResultsRemoveIndicator = { fg = p.red03 },
    GrugFarResultsAddIndicator = { fg = p.green03 },
    GrugFarResultsHeader = { fg = p.cyan03, bold = true },
    GrugFarResultsLineNo = { fg = p.violet03 },
    GrugFarResultsLineColumn = { fg = p.violet03 },
    GrugFarResultsMatch = { fg = p.bg, bg = p.yellow03 },
    GrugFarResultsPath = { fg = p.cyan03 },
    GrugFarResultsStats = { fg = p.base01 },
  }
  return highlights
end

return M
