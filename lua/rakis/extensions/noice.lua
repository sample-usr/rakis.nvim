local M = {}

--- Get noice.nvim highlights
--- folke/noice.nvim - UI enhancement
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- Command line
    NoiceCmdline = { fg = p.text, bg = p.bg },
    NoiceCmdlineIcon = { fg = p.water },
    NoiceCmdlineIconSearch = { fg = p.glowglobe },
    NoiceCmdlinePopup = { fg = p.text, bg = p.surface },
    NoiceCmdlinePopupBorder = { fg = p.highlight, bg = p.surface },
    NoiceCmdlinePopupBorderSearch = { fg = p.glowglobe, bg = p.surface },
    NoiceCmdlinePrompt = { fg = p.water },

    -- Confirm
    NoiceConfirm = { fg = p.text, bg = p.surface },
    NoiceConfirmBorder = { fg = p.highlight, bg = p.surface },

    -- Cursor
    NoiceCursor = { fg = p.bg, bg = p.text },

    -- Format
    NoiceFormatConfirm = { fg = p.water },
    NoiceFormatConfirmDefault = { fg = p.water, bold = true },
    NoiceFormatDate = { fg = p.subtle },
    NoiceFormatEvent = { fg = p.subtle },
    NoiceFormatKind = { fg = p.subtle },
    NoiceFormatLevelDebug = { fg = p.subtle },
    NoiceFormatLevelError = { fg = p.blood },
    NoiceFormatLevelInfo = { fg = p.ibad },
    NoiceFormatLevelOff = { fg = p.subtle },
    NoiceFormatLevelTrace = { fg = p.dusk },
    NoiceFormatLevelWarn = { fg = p.glowglobe },
    NoiceFormatProgressDone = { fg = p.oasis, bg = p.overlay },
    NoiceFormatProgressTodo = { fg = p.subtle, bg = p.overlay },
    NoiceFormatTitle = { fg = p.water, bold = true },

    -- LSP messages
    NoiceLspProgressClient = { fg = p.water },
    NoiceLspProgressSpinner = { fg = p.water },
    NoiceLspProgressTitle = { fg = p.text },

    -- Mini
    NoiceMini = { fg = p.text, bg = p.bg },

    -- Popups
    NoicePopup = { fg = p.text, bg = p.surface },
    NoicePopupBorder = { fg = p.highlight, bg = p.surface },

    -- Popupmenu
    NoicePopupmenu = { link = "Pmenu" },
    NoicePopupmenuBorder = { fg = p.highlight, bg = p.surface },
    NoicePopupmenuMatch = { fg = p.water, bold = true },
    NoicePopupmenuSelected = { link = "PmenuSel" },

    -- Scrollbar
    NoiceScrollbar = { fg = p.highlight },
    NoiceScrollbarThumb = { fg = p.subtle, bg = p.highlight },

    -- Split
    NoiceSplit = { fg = p.text, bg = p.bg },
    NoiceSplitBorder = { fg = p.highlight, bg = p.bg },

    -- Virtual text
    NoiceVirtualText = { fg = p.subtle },
  }
  return highlights
end

return M
