local M = {}

--- Get GitHub Copilot highlights
--- github/copilot.vim and zbirenbaum/copilot.lua
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- Copilot suggestions
    CopilotSuggestion = { fg = p.base01, italic = true },
    CopilotAnnotation = { fg = p.base01, italic = true },

    -- Copilot panel (copilot.lua)
    CopilotPanel = { fg = p.fg, bg = p.bg },
    CopilotPanelTitle = { fg = p.cyan03, bold = true },

    -- Copilot chat (if using CopilotChat.nvim)
    CopilotChatNormal = { fg = p.fg, bg = p.bg },
    CopilotChatBorder = { fg = p.bg_highlight, bg = p.bg },
    CopilotChatUser = { fg = p.cyan03, bold = true },
    CopilotChatAgent = { fg = p.violet03, bold = true },
    CopilotChatQuestion = { fg = p.yellow03 },
    CopilotChatAnswer = { fg = p.green03 },
    CopilotChatHeader = { fg = p.cyan03, bold = true },
    CopilotChatSeparator = { fg = p.bg_highlight },
    CopilotChatSpinner = { fg = p.cyan03 },
    CopilotChatSuccess = { fg = p.green03 },
    CopilotChatError = { fg = p.red03 },
  }
  return highlights
end

return M
