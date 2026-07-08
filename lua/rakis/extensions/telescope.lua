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
    TelescopeBorder = { fg = p.muted },
    TelescopePromptTitle = { fg = p.spice },
    TelescopeResultsTitle = { fg = p.spice },
    TelescopePromptPrefix = { fg = p.spice },
    TelescopePreviewTitle = { fg = p.spice },
    TelescopeSelection = { bg = p.overlay },
    TelescopePromptCounter = { fg = p.water },
    TelescopeMatching = { fg = p.spice },
  }

  if borderless_telescope then
    highlights.TelescopeBorder = { fg = p.overlay, bg = p.bg }
    highlights.TelescopeNormal = { bg = p.bg }
    highlights.TelescopePreviewBorder = { fg = p.overlay, bg = p.bg }
    highlights.TelescopePreviewNormal = { bg = p.bg }
    highlights.TelescopePreviewTitle = { fg = p.spice, bg = p.bg, bold = true }
    highlights.TelescopePromptTitle = { fg = p.spice, bg = p.bg }
    highlights.TelescopeResultsBorder = { fg = p.overlay, bg = p.bg }
    highlights.TelescopeResultsNormal = { bg = p.bg }
    highlights.TelescopeResultsTitle = { fg = p.spice, bg = p.bg }
    if telescope_style == "nvchad" then
      highlights.TelescopePromptBorder = { fg = p.highlight, bg = p.highlight }
      highlights.TelescopePromptNormal = { fg = p.text, bg = p.highlight }
      highlights.TelescopePromptPrefix = { fg = p.blood, bg = p.highlight }
    elseif telescope_style == "flat" then
      highlights.TelescopePromptPrefix = { fg = p.dusk, bg = p.surface }
      highlights.TelescopePromptCounter = { fg = p.water, bg = p.surface }
      highlights.TelescopePromptTitle = { fg = p.surface, bg = p.dusk, bold = true }
      highlights.TelescopeResultsTitle = { fg = p.dusk, bg = p.surface, bold = true }
    end
  end

  return highlights
end

return M
