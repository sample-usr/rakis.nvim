local M = {}
local util = require("rakis.util")

--- Get extension configuration
--- @param options Config
--- @param p RakisPalette
function M.get(options, p)
  options = options or {}
  local highlights = {
    MiniAnimateCursor = { reverse = true, nocombine = true },
    MiniAnimateNormalFloat = { link = "NormalFloat" },

    MiniClueBorder = { link = "FloatBorder" },
    MiniClueDescGroup = { link = "DiagnosticFloatingWarn" },
    MiniClueDescSingle = { link = "NormalFloat" },
    MiniClueNextKey = { fg = p.green02 },
    MiniClueNextKeyWithPostkeys = { link = "DiagnosticFloatingError" },
    MiniClueSeparator = { link = "DiagnosticFloatingInfo" },
    MiniClueTitle = { link = "FloatTitle" },

    MiniCompletionActiveParameter = { underline = true },

    MiniCursorword = { underline = true },
    MiniCursorwordCurrent = { underline = true },

    MiniDepsChangeAdded = { fg = p.green02 },
    MiniDepsChangeRemoved = { fg = p.red02 },
    MiniDepsHint = { link = "DiagnosticHint" },
    MiniDepsInfo = { link = "DiagnosticInfo" },
    MiniDepsMsgBreaking = { link = "DiagnosticWarn" },
    MiniDepsPlaceholder = { link = "Comment" },
    MiniDepsTitle = { link = "Title" },
    MiniDepsTitleError = { link = "ErrorMsg" },
    MiniDepsTitleSame = { link = "Boolean" },
    MiniDepsTitleUpdate = { link = "String" },

    MiniDiffOverAdd = { bg = util.blend(p.bg_solid, p.green03, 0.8) },
    MiniDiffOverChange = { bg = util.blend(p.bg_solid, p.violet03, 0.8) },
    MiniDiffOverContext = { bg = util.blend(p.bg_solid, p.orange03, 0.8) },
    MiniDiffOverDelete = { bg = util.blend(p.bg_solid, p.red03, 0.8) },
    MiniDiffSignAdd = { fg = p.green02 },
    MiniDiffSignChange = { fg = p.orange02 },
    MiniDiffSignDelete = { fg = p.red02 },

    MiniFilesBorder = { fg = p.base02 },
    MiniFilesBorderModified = { fg = p.violet02 },
    MiniFilesCursorLine = { link = "CursorLine" },
    MiniFilesDirectory = { fg = p.cyan03 },
    MiniFilesFile = { fg = p.fg },
    MiniFilesNormal = { link = "NormalFloat" },
    MiniFilesTitle = { fg = util.blend(p.base02, p.cyan03, 0.7) },
    MiniFilesTitleFocused = { fg = p.cyan01 },

    MiniHipatternsFixme = { fg = p.bg_solid, bg = p.red03, bold = true },
    MiniHipatternsHack = { fg = p.bg_solid, bg = p.yellow03, bold = true },
    MiniHipatternsNote = { fg = p.bg_solid, bg = p.violet03, bold = true },
    MiniHipatternsTodo = { fg = p.bg_solid, bg = p.cyan03, bold = true },

    MiniIconsAzure = { fg = util.blend(p.cyan03, p.fg, 0.3) },
    MiniIconsBlue = { fg = p.violet03 },
    MiniIconsCyan = { fg = p.cyan03 },
    MiniIconsGreen = { fg = p.green03 },
    MiniIconsGrey = { fg = p.fg },
    MiniIconsOrange = { fg = p.orange03 },
    MiniIconsPurple = { fg = p.magenta03 },
    MiniIconsRed = { fg = p.red03 },
    MiniIconsYellow = { fg = p.yellow03 },

    MiniIndentscopeSymbol = { fg = p.base02 },
    MiniIndentscopeSymbolOff = { fg = p.yellow03 },

    MiniJump = { link = "SpellRare" },

    MiniJump2dDim = { fg = p.base02 },
    MiniJump2dSpot = { fg = p.orange03, bold = true, nocombine = true },
    MiniJump2dSpotAhead = { fg = p.cyan03, bg = p.bg, nocombine = true },
    MiniJump2dSpotUnique = { fg = p.yellow03, bold = true, nocombine = true },

    MiniMapNormal = { link = "NormalFloat" },
    MiniMapSymbolCount = { link = "Special" },
    MiniMapSymbolLine = { fg = p.cyan03 },
    MiniMapSymbolView = { fg = p.violet03 },

    MiniNotifyBorder = { link = "FloatBorder" },
    MiniNotifyNormal = { link = "NormalFloat" },
    MiniNotifyTitle = { link = "FloatTitle" },

    MiniOperatorsExchangeFrom = { link = "IncSearch" },

    MiniPickBorder = { link = "FloatBorder" },
    MiniPickBorderBusy = { link = "DiagnosticFloatingWarn" },
    MiniPickBorderText = { link = "FloatTitle" },
    MiniPickIconDirectory = { link = "Directory" },
    MiniPickIconFile = { link = "MiniPickNormal" },
    MiniPickHeader = { link = "DiagnosticFloatingHint" },
    MiniPickMatchCurrent = { link = "CursorLine" },
    MiniPickMatchMarked = { bg = p.base02 },
    MiniPickMatchRanges = { fg = p.orange03 },
    MiniPickNormal = { link = "NormalFloat" },
    MiniPickPreviewLine = { link = "CursorLine" },
    MiniPickPreviewRegion = { link = "IncSearch" },
    MiniPickPrompt = { link = "DiagnosticFloatingInfo" },

    MiniStarterCurrent = { nocombine = true },
    MiniStarterFooter = { link = "Comment" },
    MiniStarterHeader = { fg = p.cyan03 },
    MiniStarterInactive = { link = "Comment" },
    MiniStarterItem = { link = "Normal" },
    MiniStarterItemBullet = { link = "Delimiter" },
    MiniStarterItemPrefix = { link = "WarningMsg" },
    MiniStarterSection = { fg = p.violet03 },
    MiniStarterQuery = { link = "MoreMsg" },

    MiniStatuslineDevinfo = { link = "StatusLine" },
    MiniStatuslineFileinfo = { link = "MiniStatuslineDevinfo" },
    MiniStatuslineFilename = { link = "StatusLineNC" },
    MiniStatuslineInactive = { link = "StatusLineNC" },
    MiniStatuslineModeCommand = { fg = p.bg_solid, bg = p.yellow03, bold = true },
    MiniStatuslineModeInsert = { fg = p.bg_solid, bg = p.green03, bold = true },
    MiniStatuslineModeNormal = { fg = p.bg_solid, bg = p.blue03, bold = true },
    MiniStatuslineModeOther = { fg = p.bg_solid, bg = p.cyan03, bold = true },
    MiniStatuslineModeReplace = { fg = p.bg_solid, bg = p.red03, bold = true },
    MiniStatuslineModeVisual = { fg = p.bg_solid, bg = p.magenta03, bold = true },

    MiniSurround = { link = "IncSearch" },

    MiniTablineCurrent = { fg = p.fg, bg = p.base02, bold = true },
    MiniTablineFill = { link = "TabLineFill" },
    MiniTablineHidden = { fg = p.base02, bg = p.bg },
    MiniTablineModifiedCurrent = { fg = p.base02, bg = p.fg, bold = true },
    MiniTablineModifiedHidden = { fg = p.bg_solid, bg = p.base02 },
    MiniTablineModifiedVisible = { fg = p.base02, bg = p.fg },
    MiniTablineTabpagesection = { link = "Search" },
    MiniTablineVisible = { fg = p.fg, bg = p.base02 },

    MiniTestEmphasis = { bold = true },
    MiniTestFail = { fg = p.red03, bold = true },
    MiniTestPass = { fg = p.green03, bold = true },

    MiniTrailspace = { bg = p.red02 },
  }

  return highlights
end
return M
