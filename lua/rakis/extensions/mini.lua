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
    MiniClueNextKey = { fg = p.oasis },
    MiniClueNextKeyWithPostkeys = { link = "DiagnosticFloatingError" },
    MiniClueSeparator = { link = "DiagnosticFloatingInfo" },
    MiniClueTitle = { link = "FloatTitle" },

    MiniCompletionActiveParameter = { underline = true },

    MiniCursorword = { underline = true },
    MiniCursorwordCurrent = { underline = true },

    MiniDepsChangeAdded = { fg = p.oasis },
    MiniDepsChangeRemoved = { fg = p.blood },
    MiniDepsHint = { link = "DiagnosticHint" },
    MiniDepsInfo = { link = "DiagnosticInfo" },
    MiniDepsMsgBreaking = { link = "DiagnosticWarn" },
    MiniDepsPlaceholder = { link = "Comment" },
    MiniDepsTitle = { link = "Title" },
    MiniDepsTitleError = { link = "ErrorMsg" },
    MiniDepsTitleSame = { link = "Boolean" },
    MiniDepsTitleUpdate = { link = "String" },

    MiniDiffOverAdd = { bg = util.blend(p.bg_solid, p.oasis, 0.8) },
    MiniDiffOverChange = { bg = util.blend(p.bg_solid, p.ibad, 0.8) },
    MiniDiffOverContext = { bg = p.surface },
    MiniDiffOverDelete = { bg = util.blend(p.bg_solid, p.blood, 0.8) },
    MiniDiffSignAdd = { fg = p.oasis },
    MiniDiffSignChange = { fg = p.glowglobe },
    MiniDiffSignDelete = { fg = p.blood },

    MiniFilesBorder = { link = "FloatBorder" },
    MiniFilesBorderModified = { fg = p.glowglobe },
    MiniFilesCursorLine = { link = "CursorLine" },
    MiniFilesDirectory = { fg = p.water },
    MiniFilesFile = { fg = p.text },
    MiniFilesNormal = { link = "NormalFloat" },
    MiniFilesTitle = { fg = util.blend(p.muted, p.water, 0.7) },
    MiniFilesTitleFocused = { fg = p.water },

    MiniHipatternsFixme = { fg = p.bg_solid, bg = p.blood, bold = true },
    MiniHipatternsHack = { fg = p.bg_solid, bg = p.glowglobe, bold = true },
    MiniHipatternsNote = { fg = p.bg_solid, bg = p.dusk, bold = true },
    MiniHipatternsTodo = { fg = p.bg_solid, bg = p.water, bold = true },

    MiniIconsAzure = { fg = util.blend(p.water, p.text, 0.3) },
    MiniIconsBlue = { fg = p.dusk },
    MiniIconsCyan = { fg = p.water },
    MiniIconsGreen = { fg = p.oasis },
    MiniIconsGrey = { fg = p.text },
    MiniIconsOrange = { fg = p.spice },
    MiniIconsPurple = { fg = p.bloom },
    MiniIconsRed = { fg = p.blood },
    MiniIconsYellow = { fg = p.glowglobe },

    MiniIndentscopeSymbol = { fg = p.muted },
    MiniIndentscopeSymbolOff = { fg = p.glowglobe },

    MiniJump = { link = "SpellRare" },

    MiniJump2dDim = { fg = p.muted },
    MiniJump2dSpot = { fg = p.spice, bold = true, nocombine = true },
    MiniJump2dSpotAhead = { fg = p.water, bg = p.bg, nocombine = true },
    MiniJump2dSpotUnique = { fg = p.glowglobe, bold = true, nocombine = true },

    MiniMapNormal = { link = "NormalFloat" },
    MiniMapSymbolCount = { link = "Special" },
    MiniMapSymbolLine = { fg = p.water },
    MiniMapSymbolView = { fg = p.dusk },

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
    MiniPickMatchMarked = { bg = p.muted },
    MiniPickMatchRanges = { fg = p.spice },
    MiniPickNormal = { link = "NormalFloat" },
    MiniPickPreviewLine = { link = "CursorLine" },
    MiniPickPreviewRegion = { link = "IncSearch" },
    MiniPickPrompt = { link = "DiagnosticFloatingInfo" },

    MiniStarterCurrent = { nocombine = true },
    MiniStarterFooter = { link = "Comment" },
    MiniStarterHeader = { fg = p.spice },
    MiniStarterInactive = { link = "Comment" },
    MiniStarterItem = { link = "Normal" },
    MiniStarterItemBullet = { link = "Delimiter" },
    MiniStarterItemPrefix = { link = "WarningMsg" },
    MiniStarterSection = { fg = p.dusk },
    MiniStarterQuery = { link = "MoreMsg" },

    MiniStatuslineDevinfo = { link = "StatusLine" },
    MiniStatuslineFileinfo = { link = "MiniStatuslineDevinfo" },
    MiniStatuslineFilename = { link = "StatusLineNC" },
    MiniStatuslineInactive = { link = "StatusLineNC" },
    MiniStatuslineModeCommand = { fg = p.bg_solid, bg = p.glowglobe, bold = true },
    MiniStatuslineModeInsert = { fg = p.bg_solid, bg = p.oasis, bold = true },
    MiniStatuslineModeNormal = { fg = p.bg_solid, bg = p.ibad, bold = true },
    MiniStatuslineModeOther = { fg = p.bg_solid, bg = p.water, bold = true },
    MiniStatuslineModeReplace = { fg = p.bg_solid, bg = p.spice, bold = true },
    MiniStatuslineModeVisual = { fg = p.bg_solid, bg = p.dusk, bold = true },

    MiniSurround = { link = "IncSearch" },

    MiniTablineCurrent = { fg = p.text, bg = p.overlay, bold = true },
    MiniTablineFill = { link = "TabLineFill" },
    MiniTablineHidden = { fg = p.muted, bg = p.bg },
    MiniTablineModifiedCurrent = { fg = p.glowglobe, bg = p.overlay, bold = true },
    MiniTablineModifiedHidden = { fg = p.glowglobe, bg = p.bg },
    MiniTablineModifiedVisible = { fg = p.glowglobe, bg = p.surface },
    MiniTablineTabpagesection = { link = "Search" },
    MiniTablineVisible = { fg = p.text, bg = p.surface },

    MiniTestEmphasis = { bold = true },
    MiniTestFail = { fg = p.blood, bold = true },
    MiniTestPass = { fg = p.oasis, bold = true },

    MiniTrailspace = { bg = p.blood },
  }

  return highlights
end
return M
