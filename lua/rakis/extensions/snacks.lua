local M = {}

--- Get snacks.nvim highlights
--- folke/snacks.nvim - collection of QoL plugins
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- Indent
    SnacksIndent = { fg = p.bg_highlight },
    SnacksIndentChunk = { fg = p.bg_highlight },
    SnacksIndentBlank = { fg = p.bg_highlight },
    SnacksIndentScope = { fg = p.cyan03 },

    -- Picker (telescope-like)
    SnacksPickerMatch = { fg = p.cyan03, bold = true },
    SnacksPickerDir = { fg = p.blue03 },
    SnacksPickerFile = { fg = p.fg },
    SnacksPickerIcon = { fg = p.cyan03 },
    SnacksPickerTitle = { fg = p.cyan03, bold = true },
    SnacksPickerBorder = { fg = p.bg_highlight, bg = p.bg },

    -- Dashboard
    SnacksDashboardHeader = { fg = p.blue03 },
    SnacksDashboardFooter = { fg = p.violet03 },
    SnacksDashboardIcon = { fg = p.cyan03 },
    SnacksDashboardKey = { fg = p.orange03 },
    SnacksDashboardDesc = { fg = p.fg },
    SnacksDashboardTitle = { fg = p.cyan03, bold = true },

    -- Notifications
    SnacksNotifierInfo = { fg = p.blue02 },
    SnacksNotifierWarn = { fg = p.yellow02 },
    SnacksNotifierError = { fg = p.red02 },
    SnacksNotifierDebug = { fg = p.base01 },
    SnacksNotifierTrace = { fg = p.violet02 },
    SnacksNotifierIconInfo = { fg = p.blue02 },
    SnacksNotifierIconWarn = { fg = p.yellow02 },
    SnacksNotifierIconError = { fg = p.red02 },
    SnacksNotifierIconDebug = { fg = p.base01 },
    SnacksNotifierIconTrace = { fg = p.violet02 },
    SnacksNotifierTitleInfo = { fg = p.blue02, bold = true },
    SnacksNotifierTitleWarn = { fg = p.yellow02, bold = true },
    SnacksNotifierTitleError = { fg = p.red02, bold = true },
    SnacksNotifierTitleDebug = { fg = p.base01, bold = true },
    SnacksNotifierTitleTrace = { fg = p.violet02, bold = true },
    SnacksNotifierBorderInfo = { fg = p.blue02 },
    SnacksNotifierBorderWarn = { fg = p.yellow02 },
    SnacksNotifierBorderError = { fg = p.red02 },
    SnacksNotifierBorderDebug = { fg = p.base01 },
    SnacksNotifierBorderTrace = { fg = p.violet02 },

    -- Input
    SnacksInputBorder = { fg = p.bg_highlight, bg = p.bg },
    SnacksInputTitle = { fg = p.cyan03, bold = true },
    SnacksInputIcon = { fg = p.cyan03 },

    -- Scratch
    SnacksScratchBorder = { fg = p.bg_highlight, bg = p.bg },
    SnacksScratchTitle = { fg = p.cyan03, bold = true },

    -- Zen
    SnacksZen = { bg = p.bg },
  }
  return highlights
end

return M
