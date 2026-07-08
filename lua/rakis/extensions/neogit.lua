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
    NeogitDiffAdd = { fg = p.oasis, bg = util.blend(p.bg_solid, p.oasis, 0.8) },
    NeogitDiffAddHighlight = { link = "NeogitDiffAdd" },
    NeogitDiffDelete = { fg = p.blood, bg = util.blend(p.bg_solid, p.blood, 0.8) },
    NeogitDiffDeleteHighlight = { link = "NeogitDiffDelete" },
    NeogitDiffContext = { fg = p.text, bg = p.bg },
    NeogitDiffContextHighlight = { bg = p.highlight },

    -- Hunk
    NeogitHunkHeader = { fg = p.water, bg = p.highlight, bold = true },
    NeogitHunkHeaderHighlight = { fg = p.water, bg = p.highlight, bold = true },

    -- Changes
    NeogitChangeAdded = { fg = p.oasis, bold = true, italic = opts.italic_comments },
    NeogitChangeDeleted = { fg = p.blood, bold = true, italic = opts.italic_comments },
    NeogitChangeModified = { fg = p.glowglobe, bold = true, italic = opts.italic_comments },
    NeogitChangeRenamed = { fg = p.dusk, bold = true, italic = opts.italic_comments },
    NeogitChangeUpdated = { fg = p.ibad, bold = true, italic = opts.italic_comments },
    NeogitChangeCopied = { fg = p.water, bold = true, italic = opts.italic_comments },
    NeogitChangeBothModified = { fg = p.spice, bold = true, italic = opts.italic_comments },
    NeogitChangeNewFile = { fg = p.oasis, bold = true, italic = opts.italic_comments },

    -- Sections
    NeogitSectionHeader = { fg = p.water, bold = true },
    NeogitStagedchanges = { fg = p.water, bold = true },
    NeogitUnstagedchanges = { fg = p.water, bold = true },
    NeogitUntrackedfiles = { fg = p.water, bold = true },
    NeogitUnmergedchanges = { fg = p.water, bold = true },
    NeogitRecentcommits = { fg = p.water, bold = true },

    -- Commit
    NeogitCommitViewHeader = { fg = p.water, bg = p.highlight, bold = true },
    NeogitFilePath = { fg = p.ibad, italic = opts.italic_comments },

    -- Branch
    NeogitBranch = { fg = p.dusk, bold = true },
    NeogitRemote = { fg = p.spice, bold = true },

    -- Misc
    NeogitCursorLine = { bg = p.highlight },
    NeogitFold = { fg = p.subtle },
    NeogitPopupActionKey = { fg = p.spice },
    NeogitPopupActionDisabled = { fg = p.subtle },
    NeogitPopupConfigKey = { fg = p.water },
    NeogitPopupConfigEnabled = { fg = p.oasis },
    NeogitPopupConfigDisabled = { fg = p.blood },
    NeogitPopupOptionKey = { fg = p.dusk },
    NeogitPopupOptionEnabled = { fg = p.oasis },
    NeogitPopupOptionDisabled = { fg = p.blood },
    NeogitPopupSwitchKey = { fg = p.ibad },
    NeogitPopupSwitchEnabled = { fg = p.oasis },
    NeogitPopupSwitchDisabled = { fg = p.blood },
  }
  return highlights
end

return M
