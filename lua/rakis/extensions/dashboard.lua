local M = {}

--- Get extension configuration
--- @param options Config
--- @param p RakisPalette
function M.get(options, p)
  options = options or {}

  local highlights = {
    DashboardHeader = { fg = p.spice },
    DashboardFooter = { fg = p.subtle },
    DashboardShortCut = { fg = p.muted },
    DashboardDesc = { fg = p.text },
    DashboardKey = { fg = p.spice },
    DashboardIcon = { fg = p.water },
    DashboardProjectTitle = { fg = p.glowglobe },
    DashboardProjectTitleIcon = { fg = p.glowglobe },
    DashboardProjectIcon = { fg = p.water },
    DashboardMruTitle = { fg = p.water },
    DashboardMruIcon = { fg = p.water },
    DashboardFiles = { fg = p.text },
    DashboardShortCutIcon = { fg = p.muted },
  }

  return highlights
end
return M
