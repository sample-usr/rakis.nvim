local M = {}

--- Get avante.nvim highlights
--- yetone/avante.nvim - AI assistant
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- Titles
    AvanteTitle = { fg = p.bg, bg = p.ibad, bold = true },
    AvanteReversedTitle = { fg = p.ibad },
    AvanteSubtitle = { fg = p.bg, bg = p.water },
    AvanteReversedSubtitle = { fg = p.water },
    AvanteThirdTitle = { fg = p.bg, bg = p.dusk },
    AvanteReversedThirdTitle = { fg = p.dusk },

    -- Prompt
    AvantePromptInput = { fg = p.text, bg = p.surface },
    AvantePromptInputBorder = { fg = p.highlight, bg = p.surface },

    -- Conflict
    AvanteConflictCurrent = { fg = p.oasis, bg = p.bg },
    AvanteConflictCurrentLabel = { fg = p.bg, bg = p.oasis },
    AvanteConflictIncoming = { fg = p.ibad, bg = p.bg },
    AvanteConflictIncomingLabel = { fg = p.bg, bg = p.ibad },

    -- Popup
    AvantePopupHint = { fg = p.water },

    -- Code blocks
    AvanteInlineHint = { fg = p.subtle, italic = true },
  }
  return highlights
end

return M
