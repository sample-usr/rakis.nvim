local M = {}

--- Get rainbow-delimiters.nvim highlights
--- HiPhish/rainbow-delimiters.nvim - rainbow parentheses
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    RainbowDelimiterRed = { fg = p.red03 },
    RainbowDelimiterYellow = { fg = p.yellow03 },
    RainbowDelimiterBlue = { fg = p.blue03 },
    RainbowDelimiterOrange = { fg = p.orange03 },
    RainbowDelimiterGreen = { fg = p.green03 },
    RainbowDelimiterViolet = { fg = p.violet03 },
    RainbowDelimiterCyan = { fg = p.cyan03 },
  }
  return highlights
end

return M
