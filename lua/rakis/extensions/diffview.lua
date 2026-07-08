local util = require("rakis.util")
local M = {}

--- Get diffview.nvim highlights
--- sindrets/diffview.nvim - git diff viewer
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- Primary colors
    DiffviewPrimary = { fg = p.ibad },
    DiffviewSecondary = { fg = p.water },

    -- Window
    DiffviewNormal = { fg = p.text, bg = p.bg },
    DiffviewCursorLine = { bg = p.overlay },
    DiffviewVertSplit = { fg = p.overlay },
    DiffviewWinSeparator = { fg = p.overlay },
    DiffviewSignColumn = { bg = p.bg },
    DiffviewStatusLine = { fg = p.text, bg = p.bg },
    DiffviewStatusLineNC = { fg = p.subtle, bg = p.bg },
    DiffviewEndOfBuffer = { fg = p.faint },

    -- File panel
    DiffviewFilePanelTitle = { fg = p.water, bold = true },
    DiffviewFilePanelCounter = { fg = p.spice },
    DiffviewFilePanelRootPath = { fg = p.water, bold = true },
    DiffviewFilePanelFileName = { fg = p.text },
    DiffviewFilePanelSelected = { fg = p.glowglobe, bold = true },
    DiffviewFilePanelPath = { fg = p.subtle },
    DiffviewFilePanelInsertions = { fg = p.oasis },
    DiffviewFilePanelDeletions = { fg = p.blood },
    DiffviewFilePanelConflicts = { fg = p.spice },

    -- Folder
    DiffviewFolderName = { fg = p.water, bold = true },
    DiffviewFolderSign = { fg = p.subtle },

    -- References
    DiffviewHash = { fg = p.spice },
    DiffviewReference = { fg = p.dusk, bold = true },
    DiffviewReflogSelector = { fg = p.spice },

    -- Status
    DiffviewStatusAdded = { fg = p.oasis },
    DiffviewStatusUntracked = { fg = p.water },
    DiffviewStatusModified = { fg = p.glowglobe },
    DiffviewStatusRenamed = { fg = p.dusk },
    DiffviewStatusCopied = { fg = p.water },
    DiffviewStatusTypeChange = { fg = p.glowglobe },
    DiffviewStatusUnmerged = { fg = p.spice },
    DiffviewStatusUnknown = { fg = p.subtle },
    DiffviewStatusDeleted = { fg = p.blood },
    DiffviewStatusBroken = { fg = p.blood },
    DiffviewStatusIgnored = { fg = p.subtle },

    -- Diff highlighting
    DiffviewDiffAdd = { bg = util.blend(p.bg_solid, p.oasis, 0.8) },
    DiffviewDiffChange = { bg = util.blend(p.bg_solid, p.ibad, 0.8) },
    DiffviewDiffDelete = { bg = util.blend(p.bg_solid, p.blood, 0.8) },
    DiffviewDiffText = { bg = util.blend(p.bg_solid, p.spice, 0.7) },
  }
  return highlights
end

return M
