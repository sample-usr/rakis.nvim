local M = {}

--- Get nvim-treesitter-context highlights
--- nvim-treesitter/nvim-treesitter-context - sticky function context
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    TreesitterContext = { bg = p.highlight },
    TreesitterContextLineNumber = { fg = p.spice, bg = p.highlight },
    TreesitterContextSeparator = { fg = p.highlight },
    TreesitterContextBottom = { sp = p.highlight, underline = true },
  }
  return highlights
end

return M
