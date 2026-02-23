local M = {}

--- Get avante.nvim highlights
--- yetone/avante.nvim - AI assistant
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- Titles
    AvanteTitle = { fg = p.bg, bg = p.blue03, bold = true },
    AvanteReversedTitle = { fg = p.blue03 },
    AvanteSubtitle = { fg = p.bg, bg = p.cyan03 },
    AvanteReversedSubtitle = { fg = p.cyan03 },
    AvanteThirdTitle = { fg = p.bg, bg = p.violet03 },
    AvanteReversedThirdTitle = { fg = p.violet03 },

    -- Prompt
    AvantePromptInput = { fg = p.fg, bg = p.bg },
    AvantePromptInputBorder = { fg = p.bg_highlight, bg = p.bg },

    -- Conflict
    AvanteConflictCurrent = { fg = p.green03, bg = p.bg },
    AvanteConflictCurrentLabel = { fg = p.bg, bg = p.green03 },
    AvanteConflictIncoming = { fg = p.blue03, bg = p.bg },
    AvanteConflictIncomingLabel = { fg = p.bg, bg = p.blue03 },

    -- Popup
    AvantePopupHint = { fg = p.cyan02 },

    -- Code blocks
    AvanteInlineHint = { fg = p.base01, italic = true },
  }
  return highlights
end

return M
