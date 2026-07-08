local M = {}

--- Get snacks.nvim highlights
--- folke/snacks.nvim - collection of QoL plugins
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- Indent
    SnacksIndent = { fg = p.highlight },
    SnacksIndentChunk = { fg = p.highlight },
    SnacksIndentBlank = { fg = p.highlight },
    SnacksIndentScope = { fg = p.water },

    -- Picker (telescope-like)
    SnacksPickerMatch = { fg = p.spice, bold = true },
    SnacksPickerDir = { fg = p.ibad },
    SnacksPickerFile = { fg = p.text },
    SnacksPickerIcon = { fg = p.water },
    SnacksPickerTitle = { fg = p.water, bold = true },
    SnacksPickerBorder = { fg = p.highlight, bg = p.bg },

    -- Dashboard
    SnacksDashboardHeader = { fg = p.ibad },
    SnacksDashboardFooter = { fg = p.dusk },
    SnacksDashboardIcon = { fg = p.water },
    SnacksDashboardKey = { fg = p.spice },
    SnacksDashboardDesc = { fg = p.text },
    SnacksDashboardTitle = { fg = p.water, bold = true },

    -- Notifications
    SnacksNotifierInfo = { fg = p.ibad },
    SnacksNotifierWarn = { fg = p.glowglobe },
    SnacksNotifierError = { fg = p.blood },
    SnacksNotifierDebug = { fg = p.subtle },
    SnacksNotifierTrace = { fg = p.dusk },
    SnacksNotifierIconInfo = { fg = p.ibad },
    SnacksNotifierIconWarn = { fg = p.glowglobe },
    SnacksNotifierIconError = { fg = p.blood },
    SnacksNotifierIconDebug = { fg = p.subtle },
    SnacksNotifierIconTrace = { fg = p.dusk },
    SnacksNotifierTitleInfo = { fg = p.ibad, bold = true },
    SnacksNotifierTitleWarn = { fg = p.glowglobe, bold = true },
    SnacksNotifierTitleError = { fg = p.blood, bold = true },
    SnacksNotifierTitleDebug = { fg = p.subtle, bold = true },
    SnacksNotifierTitleTrace = { fg = p.dusk, bold = true },
    SnacksNotifierBorderInfo = { fg = p.ibad },
    SnacksNotifierBorderWarn = { fg = p.glowglobe },
    SnacksNotifierBorderError = { fg = p.blood },
    SnacksNotifierBorderDebug = { fg = p.subtle },
    SnacksNotifierBorderTrace = { fg = p.dusk },

    -- Input
    SnacksInputBorder = { fg = p.highlight, bg = p.bg },
    SnacksInputTitle = { fg = p.water, bold = true },
    SnacksInputIcon = { fg = p.water },

    -- Scratch
    SnacksScratchBorder = { fg = p.highlight, bg = p.bg },
    SnacksScratchTitle = { fg = p.water, bold = true },

    -- Zen
    SnacksZen = { bg = p.bg },
  }
  return highlights
end

return M
