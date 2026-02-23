local util = require("rakis.util")
local M = {}

--- Get neogit highlights
--- NeogitOrg/neogit - git client
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- Diff
    NeogitDiffAdd = { fg = p.green03, bg = util.blend(p.bg_solid, p.green03, 0.8) },
    NeogitDiffAddHighlight = { link = "NeogitDiffAdd" },
    NeogitDiffDelete = { fg = p.red03, bg = util.blend(p.bg_solid, p.red03, 0.8) },
    NeogitDiffDeleteHighlight = { link = "NeogitDiffDelete" },
    NeogitDiffContext = { fg = p.fg, bg = p.bg },
    NeogitDiffContextHighlight = { bg = p.bg_highlight },

    -- Hunk
    NeogitHunkHeader = { fg = p.cyan03, bg = p.bg_highlight, bold = true },
    NeogitHunkHeaderHighlight = { fg = p.cyan03, bg = p.bg_highlight, bold = true },

    -- Changes
    NeogitChangeAdded = { fg = p.green03, bold = true, italic = opts.italic_comments },
    NeogitChangeDeleted = { fg = p.red03, bold = true, italic = opts.italic_comments },
    NeogitChangeModified = { fg = p.yellow03, bold = true, italic = opts.italic_comments },
    NeogitChangeRenamed = { fg = p.violet03, bold = true, italic = opts.italic_comments },
    NeogitChangeUpdated = { fg = p.blue03, bold = true, italic = opts.italic_comments },
    NeogitChangeCopied = { fg = p.cyan03, bold = true, italic = opts.italic_comments },
    NeogitChangeBothModified = { fg = p.orange03, bold = true, italic = opts.italic_comments },
    NeogitChangeNewFile = { fg = p.green03, bold = true, italic = opts.italic_comments },

    -- Sections
    NeogitSectionHeader = { fg = p.cyan03, bold = true },
    NeogitStagedchanges = { fg = p.cyan03, bold = true },
    NeogitUnstagedchanges = { fg = p.cyan03, bold = true },
    NeogitUntrackedfiles = { fg = p.cyan03, bold = true },
    NeogitUnmergedchanges = { fg = p.cyan03, bold = true },
    NeogitRecentcommits = { fg = p.cyan03, bold = true },

    -- Commit
    NeogitCommitViewHeader = { fg = p.cyan03, bg = p.bg_highlight, bold = true },
    NeogitFilePath = { fg = p.blue03, italic = opts.italic_comments },

    -- Branch
    NeogitBranch = { fg = p.violet03, bold = true },
    NeogitRemote = { fg = p.orange03, bold = true },

    -- Misc
    NeogitCursorLine = { bg = p.bg_highlight },
    NeogitFold = { fg = p.base01 },
    NeogitPopupActionKey = { fg = p.orange03 },
    NeogitPopupActionDisabled = { fg = p.base01 },
    NeogitPopupConfigKey = { fg = p.cyan03 },
    NeogitPopupConfigEnabled = { fg = p.green03 },
    NeogitPopupConfigDisabled = { fg = p.red03 },
    NeogitPopupOptionKey = { fg = p.violet03 },
    NeogitPopupOptionEnabled = { fg = p.green03 },
    NeogitPopupOptionDisabled = { fg = p.red03 },
    NeogitPopupSwitchKey = { fg = p.blue03 },
    NeogitPopupSwitchEnabled = { fg = p.green03 },
    NeogitPopupSwitchDisabled = { fg = p.red03 },
  }
  return highlights
end

return M
