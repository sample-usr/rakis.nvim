local M = {}

--- Get extension configuration
--- @param options Config
--- @param p RakisPalette
function M.get(options, p)
  options = options or {}
  local borderless_telescope = options.borderless_telescope
  local telescope_style = ""
  if type(options.borderless_telescope) == "table" then
    borderless_telescope = not options.borderless_telescope.border
    telescope_style = options.borderless_telescope.style
  end

  local highlights = {
    TelescopeBorder = { fg = p.base02 },
    TelescopePromptTitle = { fg = p.orange01 },
    TelescopeResultsTitle = { fg = p.orange01 },
    TelescopePromptPrefix = { fg = p.orange03 },
    TelescopePreviewTitle = { fg = p.orange01 },
    TelescopeSelection = { bg = p.base03 },
    TelescopePromptCounter = { fg = p.cyan03 },
    TelescopeMatching = { fg = p.cyan02 },
  }

  if borderless_telescope then
    highlights.TelescopeBorder = { fg = p.magenta03, bg = p.bg }
    highlights.TelescopeNormal = { bg = p.bg }
    highlights.TelescopePreviewBorder = { fg = p.magenta03, bg = p.bg }
    highlights.TelescopePreviewNormal = { bg = p.bg }
    highlights.TelescopePreviewTitle = { fg = p.orange01, bg = p.bg, bold = true }
    highlights.TelescopePromptTitle = { fg = p.orange01, bg = p.bg }
    highlights.TelescopeResultsBorder = { fg = p.magenta03, bg = p.bg }
    highlights.TelescopeResultsNormal = { bg = p.bg, bold = true }
    highlights.TelescopeResultsTitle = { fg = p.orange01, bg = p.bg }
    if telescope_style == "nvchad" then
      highlights.TelescopePromptBorder = { fg = p.bg_highlight, bg = p.bg_highlight }
      highlights.TelescopePromptNormal = { fg = p.fg, bg = p.bg_highlight }
      highlights.TelescopePromptPrefix = { fg = p.red03, bg = p.bg_highlight }
    elseif telescope_style == "flat" then
      highlights.TelescopePromptPrefix = { fg = p.violet03, bg = p.bg_secondary }
      highlights.TelescopePromptCounter = { fg = p.cyan03, bg = p.bg_secondary }
      highlights.TelescopePromptTitle = { fg = p.bg_secondary, bg = p.violet03, bold = true }
      highlights.TelescopeResultsTitle = { fg = p.violet03, bg = p.bg_secondary, bold = true }
    end
  end

  return highlights
end

return M
