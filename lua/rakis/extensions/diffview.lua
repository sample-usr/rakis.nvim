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
    DiffviewPrimary = { fg = p.blue03 },
    DiffviewSecondary = { fg = p.cyan03 },

    -- Window
    DiffviewNormal = { fg = p.fg, bg = p.bg_highlight },
    DiffviewCursorLine = { bg = p.bg_highlight },
    DiffviewVertSplit = { fg = p.bg_highlight },
    DiffviewWinSeparator = { fg = p.bg_highlight },
    DiffviewSignColumn = { bg = p.bg_highlight },
    DiffviewStatusLine = { fg = p.fg, bg = p.bg },
    DiffviewStatusLineNC = { fg = p.base01, bg = p.bg },
    DiffviewEndOfBuffer = { fg = p.bg_highlight },

    -- File panel
    DiffviewFilePanelTitle = { fg = p.cyan03, bold = true },
    DiffviewFilePanelCounter = { fg = p.orange03 },
    DiffviewFilePanelRootPath = { fg = p.cyan03, bold = true },
    DiffviewFilePanelFileName = { fg = p.fg },
    DiffviewFilePanelSelected = { fg = p.yellow03, bold = true },
    DiffviewFilePanelPath = { fg = p.base01 },
    DiffviewFilePanelInsertions = { fg = p.green03 },
    DiffviewFilePanelDeletions = { fg = p.red03 },
    DiffviewFilePanelConflicts = { fg = p.orange03 },

    -- Folder
    DiffviewFolderName = { fg = p.cyan03, bold = true },
    DiffviewFolderSign = { fg = p.base01 },

    -- References
    DiffviewHash = { fg = p.orange03 },
    DiffviewReference = { fg = p.violet03, bold = true },
    DiffviewReflogSelector = { fg = p.orange03 },

    -- Status
    DiffviewStatusAdded = { fg = p.green03 },
    DiffviewStatusUntracked = { fg = p.cyan03 },
    DiffviewStatusModified = { fg = p.yellow03 },
    DiffviewStatusRenamed = { fg = p.violet03 },
    DiffviewStatusCopied = { fg = p.cyan03 },
    DiffviewStatusTypeChange = { fg = p.yellow03 },
    DiffviewStatusUnmerged = { fg = p.orange03 },
    DiffviewStatusUnknown = { fg = p.base01 },
    DiffviewStatusDeleted = { fg = p.red03 },
    DiffviewStatusBroken = { fg = p.red03 },
    DiffviewStatusIgnored = { fg = p.base01 },

    -- Diff highlighting
    DiffviewDiffAdd = { bg = util.blend(p.bg_solid, p.green03, 0.8) },
    DiffviewDiffChange = { bg = util.blend(p.bg_solid, p.blue03, 0.8) },
    DiffviewDiffDelete = { bg = util.blend(p.bg_solid, p.red03, 0.8) },
    DiffviewDiffText = { bg = util.blend(p.bg_solid, p.yellow03, 0.7) },
  }
  return highlights
end

return M
