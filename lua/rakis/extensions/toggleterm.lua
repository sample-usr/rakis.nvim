local M = {}

--- Get toggleterm.nvim highlights
--- akinsho/toggleterm.nvim - terminal management
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- Terminal window
    ToggleTerm = { bg = p.bg },
    ToggleTermBorder = { fg = p.highlight, bg = p.bg },
    ToggleTermNormal = { fg = p.text, bg = p.bg },
    ToggleTermNormalFloat = { fg = p.text, bg = p.bg },
    ToggleTermFloatBorder = { fg = p.highlight, bg = p.bg },

    -- Terminal cursor
    TermCursor = { fg = p.bg, bg = p.text },
    TermCursorNC = { fg = p.bg, bg = p.subtle },
  }
  return highlights
end

return M
