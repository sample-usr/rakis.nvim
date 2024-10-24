local M = {}

--- Get extension configuration
--- @param options Config
--- @param p RakisPalette
function M.get(options, p)
  options = options or {}

  local highlights = {
    DashboardHeader = { fg = p.orange03 },
    DashboardFooter = { fg = p.cyan03 },
    DashboardShortCut = { fg = p.base02 },
    DashboardDesc = { fg = p.orange02 },
    DashboardKey = { fg = p.magenta03 },
    DashboardIcon = { fg = p.magenta03 },
    DashboardProjectTitle = { fg = p.yellow03 },
    DashboardProjectTitleIcon = { fg = p.yellow03 },
    DashboardProjectIcon = { fg = p.magenta03 },
    DashboardMruTitle = { fg = p.cyan01 },
    DashboardMruIcon = { fg = p.cyan01 },
    DashboardFiles = { fg = p.cyan01 },
    DashboardShortCutIcon = { fg = p.base02 },
  }

  return highlights
end
return M
