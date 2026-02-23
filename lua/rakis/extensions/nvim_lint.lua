local M = {}

--- Get nvim-lint highlights
--- mfussenegger/nvim-lint - asynchronous linting
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- nvim-lint uses standard diagnostic highlights
    -- These are just for completeness
    LintError = { link = "DiagnosticError" },
    LintWarning = { link = "DiagnosticWarn" },
    LintInfo = { link = "DiagnosticInfo" },
    LintHint = { link = "DiagnosticHint" },
  }
  return highlights
end

return M
