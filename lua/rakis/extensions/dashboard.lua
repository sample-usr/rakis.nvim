local M = {}

--- Get extension configuration
--- @param options Config
--- @param p RakisPalette
function M.get(options, p)
  options = options or {}

  local highlights = {
    DashboardHeader = { fg = p.spice },
    DashboardFooter = { fg = p.water },
    DashboardShortCut = { fg = p.muted },
    DashboardDesc = { fg = p.spice },
    DashboardKey = { fg = p.bloom },
    DashboardIcon = { fg = p.bloom },
    DashboardProjectTitle = { fg = p.glowglobe },
    DashboardProjectTitleIcon = { fg = p.glowglobe },
    DashboardProjectIcon = { fg = p.bloom },
    DashboardMruTitle = { fg = p.water },
    DashboardMruIcon = { fg = p.water },
    DashboardFiles = { fg = p.water },
    DashboardShortCutIcon = { fg = p.muted },
  }

  return highlights
end
return M
