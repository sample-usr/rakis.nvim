local M = {}

--- Get lazygit.nvim highlights
--- kdheepak/lazygit.nvim - lazygit integration
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- Floating window
    LazyGitFloat = { fg = p.text, bg = p.bg },
    LazyGitBorder = { fg = p.highlight, bg = p.bg },

    -- lazygit uses terminal colors, but we can style the wrapper
    -- The actual lazygit colors are set via the extras/lazygit theme file
  }
  return highlights
end

return M
