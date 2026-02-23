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
    ToggleTermBorder = { fg = p.bg_highlight, bg = p.bg },
    ToggleTermNormal = { fg = p.fg, bg = p.bg },
    ToggleTermNormalFloat = { fg = p.fg, bg = p.bg },
    ToggleTermFloatBorder = { fg = p.bg_highlight, bg = p.bg },

    -- Terminal cursor
    TermCursor = { fg = p.bg, bg = p.fg },
    TermCursorNC = { fg = p.bg, bg = p.base01 },
  }
  return highlights
end

return M
