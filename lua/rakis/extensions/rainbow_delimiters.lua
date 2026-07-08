local M = {}

--- Get rainbow-delimiters.nvim highlights
--- HiPhish/rainbow-delimiters.nvim - rainbow parentheses
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    RainbowDelimiterRed = { fg = p.blood },
    RainbowDelimiterYellow = { fg = p.glowglobe },
    RainbowDelimiterBlue = { fg = p.ibad },
    RainbowDelimiterOrange = { fg = p.spice },
    RainbowDelimiterGreen = { fg = p.oasis },
    RainbowDelimiterViolet = { fg = p.dusk },
    RainbowDelimiterCyan = { fg = p.water },
  }
  return highlights
end

return M
