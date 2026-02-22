local M = {}

--- Get nvim-treesitter-context highlights
--- nvim-treesitter/nvim-treesitter-context - sticky function context
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    TreesitterContext = { bg = p.bg_highlight },
    TreesitterContextLineNumber = { fg = p.orange03, bg = p.bg_highlight },
    TreesitterContextSeparator = { fg = p.bg_highlight },
    TreesitterContextBottom = { sp = p.bg_highlight, underline = true },
  }
  return highlights
end

return M
