local M = {}

--- Get indent-blankline.nvim v3 highlights
--- lukas-reineke/indent-blankline.nvim - indent guides
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- Version 3.x (Ibl prefix)
    IblIndent = { fg = p.highlight },
    IblScope = { fg = p.water },
    IblWhitespace = { fg = p.highlight },

    -- Legacy version 2.x support (kept for backward compatibility)
    IndentBlanklineChar = { fg = p.highlight },
    IndentBlanklineContextChar = { fg = p.water },
    IndentBlanklineContextStart = { sp = p.water, underline = true },
    IndentBlanklineSpaceChar = { fg = p.highlight },
    IndentBlanklineSpaceCharBlankline = { fg = p.highlight },
  }
  return highlights
end

return M
