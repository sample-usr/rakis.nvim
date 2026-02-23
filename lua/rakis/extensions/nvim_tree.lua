local M = {}

--- Get nvim-tree.lua highlights
--- kyazdani42/nvim-tree.lua - file explorer
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- Folders
    NvimTreeFolderName = { fg = p.cyan03 },
    NvimTreeOpenedFolderName = { fg = p.cyan01, bold = true },
    NvimTreeEmptyFolderName = { fg = p.base01 },
    NvimTreeFolderIcon = { fg = p.cyan03 },
    NvimTreeRootFolder = { fg = p.cyan03, bold = true },

    -- Files
    NvimTreeExecFile = { fg = p.green03, bold = true },
    NvimTreeImageFile = { fg = p.violet03 },
    NvimTreeSpecialFile = { fg = p.yellow03 },
    NvimTreeSymlink = { fg = p.violet03 },
    NvimTreeOpenedFile = { fg = p.fg, bg = p.bg_highlight },

    -- Git
    NvimTreeGitDirty = { fg = p.yellow03 },
    NvimTreeGitStaged = { fg = p.green03 },
    NvimTreeGitMerge = { fg = p.orange03 },
    NvimTreeGitRenamed = { fg = p.violet03 },
    NvimTreeGitNew = { fg = p.green03 },
    NvimTreeGitDeleted = { fg = p.red03 },
    NvimTreeGitIgnored = { fg = p.base01 },

    -- File status
    NvimTreeFileDeleted = { fg = p.red03 },
    NvimTreeFileDirty = { fg = p.yellow03 },
    NvimTreeFileMerge = { fg = p.orange03 },
    NvimTreeFileNew = { fg = p.green03 },
    NvimTreeFileRenamed = { fg = p.violet03 },
    NvimTreeFileStaged = { fg = p.green03 },

    -- UI elements
    NvimTreeNormal = { fg = p.fg, bg = p.bg },
    NvimTreeNormalNC = { fg = p.fg, bg = p.bg },
    NvimTreeEndOfBuffer = { fg = p.bg },
    NvimTreeCursorLine = { bg = p.bg_highlight },
    NvimTreeVertSplit = { fg = p.bg_highlight, bg = p.bg },
    NvimTreeWinSeparator = { fg = p.bg_highlight, bg = p.bg },
    NvimTreeStatusLine = { fg = p.bg, bg = p.bg },
    NvimTreeStatusLineNC = { fg = p.bg, bg = p.bg },

    -- Window picker
    NvimTreeWindowPicker = { fg = p.bg, bg = p.cyan03, bold = true },

    -- Indent markers
    NvimTreeIndentMarker = { fg = p.bg_highlight },

    -- LSP diagnostics
    NvimTreeLspDiagnosticsError = { fg = p.red02 },
    NvimTreeLspDiagnosticsWarning = { fg = p.yellow02 },
    NvimTreeLspDiagnosticsInformation = { fg = p.blue02 },
    NvimTreeLspDiagnosticsHint = { fg = p.cyan02 },

    -- Bookmarks
    NvimTreeBookmark = { fg = p.violet03 },

    -- Clipboard
    NvimTreeCopiedHL = { fg = p.green03, bold = true },
    NvimTreeCutHL = { fg = p.red03, bold = true },
  }
  return highlights
end

return M
