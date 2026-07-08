local M = {}

--- Get vim-fugitive highlights
--- tpope/vim-fugitive - git integration
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- Status
    fugitiveHeader = { fg = p.water, bold = true },
    fugitiveHeading = { fg = p.water, bold = true },
    fugitiveSection = { fg = p.ibad, bold = true },
    fugitiveCount = { fg = p.dusk },

    -- Diff
    fugitiveStagedHeading = { fg = p.oasis, bold = true },
    fugitiveStagedModifier = { fg = p.oasis },
    fugitiveStagedSection = { fg = p.oasis },
    fugitiveUnstagedHeading = { fg = p.glowglobe, bold = true },
    fugitiveUnstagedModifier = { fg = p.glowglobe },
    fugitiveUnstagedSection = { fg = p.glowglobe },
    fugitiveUntrackedHeading = { fg = p.blood, bold = true },
    fugitiveUntrackedModifier = { fg = p.blood },
    fugitiveUntrackedSection = { fg = p.blood },

    -- Symbols
    fugitiveSymbolicRef = { fg = p.dusk },
    fugitiveHash = { fg = p.subtle },

    -- Blame
    fugitiveblameHash = { fg = p.dusk },
    fugitiveblameTime = { fg = p.subtle },
    fugitiveblameLineNumber = { fg = p.subtle },
    fugitiveblameAuthor = { fg = p.water },
    fugitiveblameSummary = { fg = p.text },
    fugitiveblameNotCommittedYet = { fg = p.glowglobe },
  }
  return highlights
end

return M
