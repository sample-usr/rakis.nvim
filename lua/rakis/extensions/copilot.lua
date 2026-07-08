local M = {}

--- Get GitHub Copilot highlights
--- github/copilot.vim and zbirenbaum/copilot.lua
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- Copilot suggestions
    CopilotSuggestion = { fg = p.subtle, italic = true },
    CopilotAnnotation = { fg = p.subtle, italic = true },

    -- Copilot panel (copilot.lua)
    CopilotPanel = { fg = p.text, bg = p.bg },
    CopilotPanelTitle = { fg = p.water, bold = true },

    -- Copilot chat (if using CopilotChat.nvim)
    CopilotChatNormal = { fg = p.text, bg = p.bg },
    CopilotChatBorder = { fg = p.highlight, bg = p.bg },
    CopilotChatUser = { fg = p.water, bold = true },
    CopilotChatAgent = { fg = p.dusk, bold = true },
    CopilotChatQuestion = { fg = p.glowglobe },
    CopilotChatAnswer = { fg = p.oasis },
    CopilotChatHeader = { fg = p.water, bold = true },
    CopilotChatSeparator = { fg = p.highlight },
    CopilotChatSpinner = { fg = p.water },
    CopilotChatSuccess = { fg = p.oasis },
    CopilotChatError = { fg = p.blood },
  }
  return highlights
end

return M
