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
    BufferLineBackground = { fg = p.base01, bg = p.bg },

    -- Buffers
    BufferLineBuffer = { fg = p.base01, bg = p.bg },
    BufferLineBufferSelected = { fg = p.fg, bg = p.bg_highlight, bold = true },
    BufferLineBufferVisible = { fg = p.base01, bg = p.bg },

    -- Tabs
    BufferLineTab = { fg = p.base01, bg = p.bg },
    BufferLineTabSelected = { fg = p.fg, bg = p.bg_highlight, bold = true },
    BufferLineTabClose = { fg = p.red03, bg = p.bg },

    -- Close buttons
    BufferLineCloseButton = { fg = p.base01, bg = p.bg },
    BufferLineCloseButtonSelected = { fg = p.red03, bg = p.bg_highlight },
    BufferLineCloseButtonVisible = { fg = p.base01, bg = p.bg },

    -- Modified
    BufferLineModified = { fg = p.cyan03, bg = p.bg },
    BufferLineModifiedSelected = { fg = p.cyan03, bg = p.bg_highlight },
    BufferLineModifiedVisible = { fg = p.cyan03, bg = p.bg },

    -- Separators
    BufferLineSeparator = { fg = p.bg, bg = p.bg },
    BufferLineSeparatorSelected = { fg = p.bg, bg = p.bg },
    BufferLineSeparatorVisible = { fg = p.bg, bg = p.bg },

    -- Indicators
    BufferLineIndicatorSelected = { fg = p.cyan03, bg = p.bg_highlight },

    -- Diagnostics
    BufferLineDiagnostic = { fg = p.base01, bg = p.bg },
    BufferLineDiagnosticSelected = { fg = p.fg, bg = p.bg_highlight },
    BufferLineDiagnosticVisible = { fg = p.base01, bg = p.bg },

    BufferLineError = { fg = p.red02, bg = p.bg },
    BufferLineErrorSelected = { fg = p.red02, bg = p.bg_highlight },
    BufferLineErrorVisible = { fg = p.red02, bg = p.bg },
    BufferLineErrorDiagnostic = { fg = p.red02, bg = p.bg },
    BufferLineErrorDiagnosticSelected = { fg = p.red02, bg = p.bg_highlight },
    BufferLineErrorDiagnosticVisible = { fg = p.red02, bg = p.bg },

    BufferLineWarning = { fg = p.yellow02, bg = p.bg },
    BufferLineWarningSelected = { fg = p.yellow02, bg = p.bg_highlight },
    BufferLineWarningVisible = { fg = p.yellow02, bg = p.bg },
    BufferLineWarningDiagnostic = { fg = p.yellow02, bg = p.bg },
    BufferLineWarningDiagnosticSelected = { fg = p.yellow02, bg = p.bg_highlight },
    BufferLineWarningDiagnosticVisible = { fg = p.yellow02, bg = p.bg },

    BufferLineInfo = { fg = p.blue02, bg = p.bg },
    BufferLineInfoSelected = { fg = p.blue02, bg = p.bg_highlight },
    BufferLineInfoVisible = { fg = p.blue02, bg = p.bg },
    BufferLineInfoDiagnostic = { fg = p.blue02, bg = p.bg },
    BufferLineInfoDiagnosticSelected = { fg = p.blue02, bg = p.bg_highlight },
    BufferLineInfoDiagnosticVisible = { fg = p.blue02, bg = p.bg },

    BufferLineHint = { fg = p.cyan02, bg = p.bg },
    BufferLineHintSelected = { fg = p.cyan02, bg = p.bg_highlight },
    BufferLineHintVisible = { fg = p.cyan02, bg = p.bg },
    BufferLineHintDiagnostic = { fg = p.cyan02, bg = p.bg },
    BufferLineHintDiagnosticSelected = { fg = p.cyan02, bg = p.bg_highlight },
    BufferLineHintDiagnosticVisible = { fg = p.cyan02, bg = p.bg },

    -- Duplicates
    BufferLineDuplicate = { fg = p.base01, bg = p.bg, italic = true },
    BufferLineDuplicateSelected = { fg = p.fg, bg = p.bg_highlight, italic = true },
    BufferLineDuplicateVisible = { fg = p.base01, bg = p.bg, italic = true },

    -- Pick
    BufferLinePick = { fg = p.red03, bg = p.bg, bold = true },
    BufferLinePickSelected = { fg = p.red03, bg = p.bg_highlight, bold = true },
    BufferLinePickVisible = { fg = p.red03, bg = p.bg, bold = true },

    -- Numbers
    BufferLineNumbers = { fg = p.base01, bg = p.bg },
    BufferLineNumbersSelected = { fg = p.fg, bg = p.bg_highlight, bold = true },
    BufferLineNumbersVisible = { fg = p.base01, bg = p.bg },
  }
  return highlights
end

return M
