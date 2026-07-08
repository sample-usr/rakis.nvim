local M = {}

--- Get grug-far.nvim highlights
--- MagicDuck/grug-far.nvim - search and replace
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- Help
    GrugFarHelpHeader = { fg = p.water, bold = true },
    GrugFarHelpHeaderKey = { fg = p.glowglobe },
    GrugFarHelpWinActionKey = { fg = p.glowglobe },
    GrugFarHelpWinActionPrefix = { fg = p.water },
    GrugFarHelpWinActionText = { fg = p.text },
    GrugFarHelpWinHeader = { fg = p.water, bold = true },

    -- Input
    GrugFarInputLabel = { fg = p.water },
    GrugFarInputPlaceholder = { fg = p.subtle, italic = true },

    -- Results
    GrugFarResultsActionMessage = { fg = p.water },
    GrugFarResultsChangeIndicator = { fg = p.glowglobe },
    GrugFarResultsRemoveIndicator = { fg = p.blood },
    GrugFarResultsAddIndicator = { fg = p.oasis },
    GrugFarResultsHeader = { fg = p.water, bold = true },
    GrugFarResultsLineNo = { fg = p.dusk },
    GrugFarResultsLineColumn = { fg = p.dusk },
    GrugFarResultsMatch = { fg = p.bg, bg = p.glowglobe },
    GrugFarResultsPath = { fg = p.water },
    GrugFarResultsStats = { fg = p.subtle },
  }
  return highlights
end

return M
