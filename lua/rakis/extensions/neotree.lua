local M = {}

--- Get neo-tree highlights
--- nvim-neo-tree/neo-tree.nvim - file explorer
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- Git status
    NeoTreeGitAdded = { fg = p.oasis },
    NeoTreeGitConflict = { fg = p.spice },
    NeoTreeGitDeleted = { fg = p.blood },
    NeoTreeGitIgnored = { fg = p.subtle },
    NeoTreeGitModified = { fg = p.glowglobe },
    NeoTreeGitRenamed = { fg = p.dusk },
    NeoTreeGitUntracked = { fg = p.water },

    -- Tabs
    NeoTreeTabActive = { fg = p.text, bg = p.overlay },
    NeoTreeTabInactive = { fg = p.subtle, bg = p.bg },
    NeoTreeTabSeparatorActive = { link = "WinSeparator" },
    NeoTreeTabSeparatorInactive = { link = "WinSeparator" },

    -- Title bar
    NeoTreeTitleBar = { fg = p.bg, bg = p.water, bold = true },

    -- File/folder items
    NeoTreeDirectoryIcon = { fg = p.water },
    NeoTreeDirectoryName = { fg = p.water },
    NeoTreeFileName = { fg = p.text },
    NeoTreeFileIcon = { fg = p.text },
    NeoTreeFileNameOpened = { fg = p.water },
    NeoTreeIndentMarker = { fg = p.faint },
    NeoTreeExpander = { fg = p.subtle },
    NeoTreeRootName = { fg = p.water, bold = true },
    NeoTreeSymbolicLinkTarget = { fg = p.dusk },

    -- Floating window
    NeoTreeFloatBorder = { fg = p.highlight, bg = p.surface },
    NeoTreeFloatTitle = { fg = p.spice, bg = p.surface },

    -- Window picker
    NeoTreeWindowsHidden = { fg = p.subtle },
  }
  return highlights
end

return M
