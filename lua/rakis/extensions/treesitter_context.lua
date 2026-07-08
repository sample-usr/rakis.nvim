local M = {}

--- Get nvim-treesitter-context highlights
--- nvim-treesitter/nvim-treesitter-context - sticky function context
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    TreesitterContext = { bg = p.surface },
    TreesitterContextLineNumber = { fg = p.spice, bg = p.surface },
    TreesitterContextSeparator = { fg = p.overlay },
    TreesitterContextBottom = { sp = p.overlay, underline = true },
  }
  return highlights
end

return M
