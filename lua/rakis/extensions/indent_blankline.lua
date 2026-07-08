local M = {}

--- Get indent-blankline.nvim v3 highlights
--- lukas-reineke/indent-blankline.nvim - indent guides
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- Version 3.x (Ibl prefix)
    IblIndent = { fg = p.faint },
    IblScope = { fg = p.water },
    IblWhitespace = { fg = p.faint },

    -- Legacy version 2.x support (kept for backward compatibility)
    IndentBlanklineChar = { fg = p.faint },
    IndentBlanklineContextChar = { fg = p.water },
    IndentBlanklineContextStart = { sp = p.water, underline = true },
    IndentBlanklineSpaceChar = { fg = p.faint },
    IndentBlanklineSpaceCharBlankline = { fg = p.faint },
  }
  return highlights
end

return M
