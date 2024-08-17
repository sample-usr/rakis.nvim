local theme = require("rakis.theme")
local config = require("rakis.config")
local util = require("rakis.util")

local M = {}

function M.load()
  if config.options.cache then
    require("rakis.cache").load()
    return
  end
  util.load(theme.setup())
end

M.setup = config.setup
M.colorscheme = M.load

vim.api.nvim_create_user_command("RakisToggleMode", function()
  local new_variant = util.toggle_theme_variant()
  -- util.toggle_lualine_theme()
  vim.api.nvim_exec_autocmds("User", { pattern = "RakisToggleMode", data = new_variant })
end, {})

vim.api.nvim_create_user_command("RakisBuildCache", function()
  require("rakis.cache").build(theme.setup())
end, {})

vim.api.nvim_create_user_command("RakisClearCache", function()
  require("rakis.cache").clear()
end, {})

-- autocmd runs togle_lualine_theme when background option is changed. checks if the colorscheme is 'rakis' and the variant is 'auto' before executing.
vim.api.nvim_create_autocmd("OptionSet", {
  pattern = "background",
  callback = function()
    if vim.g.rakis_opts.theme.variant ~= "auto" or vim.fn.execute("colorscheme"):find("rakis") == nil then
      return
    end
    -- util.toggle_lualine_theme()
  end,
})

return M
