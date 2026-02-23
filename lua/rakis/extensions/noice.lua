local M = {}

--- Get noice.nvim highlights
--- folke/noice.nvim - UI enhancement
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- Command line
    NoiceCmdline = { fg = p.fg, bg = p.bg },
    NoiceCmdlineIcon = { fg = p.cyan03 },
    NoiceCmdlineIconSearch = { fg = p.yellow03 },
    NoiceCmdlinePopup = { fg = p.fg, bg = p.bg },
    NoiceCmdlinePopupBorder = { fg = p.bg_highlight, bg = p.bg },
    NoiceCmdlinePopupBorderSearch = { fg = p.yellow03, bg = p.bg },
    NoiceCmdlinePrompt = { fg = p.cyan03 },

    -- Confirm
    NoiceConfirm = { fg = p.fg, bg = p.bg },
    NoiceConfirmBorder = { fg = p.bg_highlight, bg = p.bg },

    -- Cursor
    NoiceCursor = { fg = p.bg, bg = p.fg },

    -- Format
    NoiceFormatConfirm = { fg = p.cyan03 },
    NoiceFormatConfirmDefault = { fg = p.cyan03, bold = true },
    NoiceFormatDate = { fg = p.base01 },
    NoiceFormatEvent = { fg = p.base01 },
    NoiceFormatKind = { fg = p.base01 },
    NoiceFormatLevelDebug = { fg = p.base01 },
    NoiceFormatLevelError = { fg = p.red02 },
    NoiceFormatLevelInfo = { fg = p.blue02 },
    NoiceFormatLevelOff = { fg = p.base01 },
    NoiceFormatLevelTrace = { fg = p.violet02 },
    NoiceFormatLevelWarn = { fg = p.yellow02 },
    NoiceFormatProgressDone = { fg = p.green03, bg = p.bg_highlight },
    NoiceFormatProgressTodo = { fg = p.base01, bg = p.bg_highlight },
    NoiceFormatTitle = { fg = p.cyan03, bold = true },

    -- LSP messages
    NoiceLspProgressClient = { fg = p.cyan03 },
    NoiceLspProgressSpinner = { fg = p.cyan03 },
    NoiceLspProgressTitle = { fg = p.fg },

    -- Mini
    NoiceMini = { fg = p.fg, bg = p.bg },

    -- Popups
    NoicePopup = { fg = p.fg, bg = p.bg },
    NoicePopupBorder = { fg = p.bg_highlight, bg = p.bg },

    -- Popupmenu
    NoicePopupmenu = { link = "Pmenu" },
    NoicePopupmenuBorder = { fg = p.bg_highlight, bg = p.bg },
    NoicePopupmenuMatch = { fg = p.cyan03, bold = true },
    NoicePopupmenuSelected = { link = "PmenuSel" },

    -- Scrollbar
    NoiceScrollbar = { fg = p.bg_highlight },
    NoiceScrollbarThumb = { fg = p.base01, bg = p.bg_highlight },

    -- Split
    NoiceSplit = { fg = p.fg, bg = p.bg },
    NoiceSplitBorder = { fg = p.bg_highlight, bg = p.bg },

    -- Virtual text
    NoiceVirtualText = { fg = p.base01 },
  }
  return highlights
end

return M
