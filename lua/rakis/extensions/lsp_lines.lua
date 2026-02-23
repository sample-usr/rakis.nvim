local M = {}

--- Get lsp_lines.nvim highlights
--- https://git.sr.ht/~whynothugo/lsp_lines.nvim - diagnostic lines
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- The plugin uses standard diagnostic highlights
    -- We just ensure they're available
    LspLinesError = { link = "DiagnosticError" },
    LspLinesWarning = { link = "DiagnosticWarn" },
    LspLinesInfo = { link = "DiagnosticInfo" },
    LspLinesHint = { link = "DiagnosticHint" },
  }
  return highlights
end

return M
