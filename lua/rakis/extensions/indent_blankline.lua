local M = {}

--- Get indent-blankline.nvim v3 highlights
--- lukas-reineke/indent-blankline.nvim - indent guides
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- Version 3.x (Ibl prefix)
    IblIndent = { fg = p.bg_highlight },
    IblScope = { fg = p.cyan03 },
    IblWhitespace = { fg = p.bg_highlight },

    -- Legacy version 2.x support (kept for backward compatibility)
    IndentBlanklineChar = { fg = p.bg_highlight },
    IndentBlanklineContextChar = { fg = p.cyan03 },
    IndentBlanklineContextStart = { sp = p.cyan03, underline = true },
    IndentBlanklineSpaceChar = { fg = p.bg_highlight },
    IndentBlanklineSpaceCharBlankline = { fg = p.bg_highlight },
  }
  return highlights
end

return M
