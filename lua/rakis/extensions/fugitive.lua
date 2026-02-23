local M = {}

--- Get vim-fugitive highlights
--- tpope/vim-fugitive - git integration
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- Status
    fugitiveHeader = { fg = p.cyan03, bold = true },
    fugitiveHeading = { fg = p.cyan03, bold = true },
    fugitiveSection = { fg = p.blue03, bold = true },
    fugitiveCount = { fg = p.violet03 },

    -- Diff
    fugitiveStagedHeading = { fg = p.green03, bold = true },
    fugitiveStagedModifier = { fg = p.green03 },
    fugitiveStagedSection = { fg = p.green03 },
    fugitiveUnstagedHeading = { fg = p.yellow03, bold = true },
    fugitiveUnstagedModifier = { fg = p.yellow03 },
    fugitiveUnstagedSection = { fg = p.yellow03 },
    fugitiveUntrackedHeading = { fg = p.red03, bold = true },
    fugitiveUntrackedModifier = { fg = p.red03 },
    fugitiveUntrackedSection = { fg = p.red03 },

    -- Symbols
    fugitiveSymbolicRef = { fg = p.violet03 },
    fugitiveHash = { fg = p.base01 },

    -- Blame
    fugitiveblameHash = { fg = p.violet03 },
    fugitiveblameTime = { fg = p.base01 },
    fugitiveblameLineNumber = { fg = p.base01 },
    fugitiveblameAuthor = { fg = p.cyan03 },
    fugitiveblameSummary = { fg = p.fg },
    fugitiveblameNotCommittedYet = { fg = p.yellow03 },
  }
  return highlights
end

return M
