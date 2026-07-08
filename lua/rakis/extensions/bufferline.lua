local M = {}

--- Get bufferline.nvim highlights
--- akinsho/bufferline.nvim - buffer line
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- Fill
    BufferLineFill = { bg = p.bg },
    BufferLineBackground = { fg = p.subtle, bg = p.bg },

    -- Buffers
    BufferLineBuffer = { fg = p.subtle, bg = p.bg },
    BufferLineBufferSelected = { fg = p.text, bg = p.highlight, bold = true },
    BufferLineBufferVisible = { fg = p.subtle, bg = p.bg },

    -- Tabs
    BufferLineTab = { fg = p.subtle, bg = p.bg },
    BufferLineTabSelected = { fg = p.text, bg = p.highlight, bold = true },
    BufferLineTabClose = { fg = p.blood, bg = p.bg },

    -- Close buttons
    BufferLineCloseButton = { fg = p.subtle, bg = p.bg },
    BufferLineCloseButtonSelected = { fg = p.blood, bg = p.highlight },
    BufferLineCloseButtonVisible = { fg = p.subtle, bg = p.bg },

    -- Modified
    BufferLineModified = { fg = p.water, bg = p.bg },
    BufferLineModifiedSelected = { fg = p.water, bg = p.highlight },
    BufferLineModifiedVisible = { fg = p.water, bg = p.bg },

    -- Separators
    BufferLineSeparator = { fg = p.bg, bg = p.bg },
    BufferLineSeparatorSelected = { fg = p.bg, bg = p.bg },
    BufferLineSeparatorVisible = { fg = p.bg, bg = p.bg },

    -- Indicators
    BufferLineIndicatorSelected = { fg = p.water, bg = p.highlight },

    -- Diagnostics
    BufferLineDiagnostic = { fg = p.subtle, bg = p.bg },
    BufferLineDiagnosticSelected = { fg = p.text, bg = p.highlight },
    BufferLineDiagnosticVisible = { fg = p.subtle, bg = p.bg },

    BufferLineError = { fg = p.blood, bg = p.bg },
    BufferLineErrorSelected = { fg = p.blood, bg = p.highlight },
    BufferLineErrorVisible = { fg = p.blood, bg = p.bg },
    BufferLineErrorDiagnostic = { fg = p.blood, bg = p.bg },
    BufferLineErrorDiagnosticSelected = { fg = p.blood, bg = p.highlight },
    BufferLineErrorDiagnosticVisible = { fg = p.blood, bg = p.bg },

    BufferLineWarning = { fg = p.glowglobe, bg = p.bg },
    BufferLineWarningSelected = { fg = p.glowglobe, bg = p.highlight },
    BufferLineWarningVisible = { fg = p.glowglobe, bg = p.bg },
    BufferLineWarningDiagnostic = { fg = p.glowglobe, bg = p.bg },
    BufferLineWarningDiagnosticSelected = { fg = p.glowglobe, bg = p.highlight },
    BufferLineWarningDiagnosticVisible = { fg = p.glowglobe, bg = p.bg },

    BufferLineInfo = { fg = p.ibad, bg = p.bg },
    BufferLineInfoSelected = { fg = p.ibad, bg = p.highlight },
    BufferLineInfoVisible = { fg = p.ibad, bg = p.bg },
    BufferLineInfoDiagnostic = { fg = p.ibad, bg = p.bg },
    BufferLineInfoDiagnosticSelected = { fg = p.ibad, bg = p.highlight },
    BufferLineInfoDiagnosticVisible = { fg = p.ibad, bg = p.bg },

    BufferLineHint = { fg = p.water, bg = p.bg },
    BufferLineHintSelected = { fg = p.water, bg = p.highlight },
    BufferLineHintVisible = { fg = p.water, bg = p.bg },
    BufferLineHintDiagnostic = { fg = p.water, bg = p.bg },
    BufferLineHintDiagnosticSelected = { fg = p.water, bg = p.highlight },
    BufferLineHintDiagnosticVisible = { fg = p.water, bg = p.bg },

    -- Duplicates
    BufferLineDuplicate = { fg = p.subtle, bg = p.bg, italic = true },
    BufferLineDuplicateSelected = { fg = p.text, bg = p.highlight, italic = true },
    BufferLineDuplicateVisible = { fg = p.subtle, bg = p.bg, italic = true },

    -- Pick
    BufferLinePick = { fg = p.blood, bg = p.bg, bold = true },
    BufferLinePickSelected = { fg = p.blood, bg = p.highlight, bold = true },
    BufferLinePickVisible = { fg = p.blood, bg = p.bg, bold = true },

    -- Numbers
    BufferLineNumbers = { fg = p.subtle, bg = p.bg },
    BufferLineNumbersSelected = { fg = p.text, bg = p.highlight, bold = true },
    BufferLineNumbersVisible = { fg = p.subtle, bg = p.bg },
  }
  return highlights
end

return M
