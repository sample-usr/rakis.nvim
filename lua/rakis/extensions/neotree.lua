local M = {}

--- Get neo-tree highlights
--- nvim-neo-tree/neo-tree.nvim - file explorer
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- Git status
    NeoTreeGitAdded = { fg = p.green03 },
    NeoTreeGitConflict = { fg = p.orange03 },
    NeoTreeGitDeleted = { fg = p.red03 },
    NeoTreeGitIgnored = { fg = p.base01 },
    NeoTreeGitModified = { fg = p.yellow03 },
    NeoTreeGitRenamed = { fg = p.violet03 },
    NeoTreeGitUntracked = { fg = p.cyan03 },

    -- Tabs
    NeoTreeTabActive = { fg = p.fg, bg = p.bg_highlight },
    NeoTreeTabInactive = { fg = p.base01, bg = p.bg },
    NeoTreeTabSeparatorActive = { link = "WinSeparator" },
    NeoTreeTabSeparatorInactive = { link = "WinSeparator" },

    -- Title bar
    NeoTreeTitleBar = { fg = p.bg, bg = p.cyan03, bold = true },

    -- File/folder items
    NeoTreeDirectoryIcon = { fg = p.cyan03 },
    NeoTreeDirectoryName = { fg = p.cyan03 },
    NeoTreeFileName = { fg = p.fg },
    NeoTreeFileIcon = { fg = p.fg },
    NeoTreeFileNameOpened = { fg = p.cyan01 },
    NeoTreeIndentMarker = { fg = p.bg_highlight },
    NeoTreeExpander = { fg = p.base01 },
    NeoTreeRootName = { fg = p.cyan03, bold = true },
    NeoTreeSymbolicLinkTarget = { fg = p.violet03 },

    -- Floating window
    NeoTreeFloatBorder = { fg = p.bg_highlight, bg = p.bg },
    NeoTreeFloatTitle = { fg = p.cyan03, bg = p.bg },

    -- Window picker
    NeoTreeWindowsHidden = { fg = p.base01 },
  }
  return highlights
end

return M
