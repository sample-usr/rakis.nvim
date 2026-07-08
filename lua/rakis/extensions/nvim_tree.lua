local M = {}

--- Get nvim-tree.lua highlights
--- kyazdani42/nvim-tree.lua - file explorer
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- Folders
    NvimTreeFolderName = { fg = p.water },
    NvimTreeOpenedFolderName = { fg = p.water, bold = true },
    NvimTreeEmptyFolderName = { fg = p.subtle },
    NvimTreeFolderIcon = { fg = p.water },
    NvimTreeRootFolder = { fg = p.water, bold = true },

    -- Files
    NvimTreeExecFile = { fg = p.oasis, bold = true },
    NvimTreeImageFile = { fg = p.dusk },
    NvimTreeSpecialFile = { fg = p.glowglobe },
    NvimTreeSymlink = { fg = p.dusk },
    NvimTreeOpenedFile = { fg = p.text, bg = p.highlight },

    -- Git
    NvimTreeGitDirty = { fg = p.glowglobe },
    NvimTreeGitStaged = { fg = p.oasis },
    NvimTreeGitMerge = { fg = p.spice },
    NvimTreeGitRenamed = { fg = p.dusk },
    NvimTreeGitNew = { fg = p.oasis },
    NvimTreeGitDeleted = { fg = p.blood },
    NvimTreeGitIgnored = { fg = p.subtle },

    -- File status
    NvimTreeFileDeleted = { fg = p.blood },
    NvimTreeFileDirty = { fg = p.glowglobe },
    NvimTreeFileMerge = { fg = p.spice },
    NvimTreeFileNew = { fg = p.oasis },
    NvimTreeFileRenamed = { fg = p.dusk },
    NvimTreeFileStaged = { fg = p.oasis },

    -- UI elements
    NvimTreeNormal = { fg = p.text, bg = p.bg },
    NvimTreeNormalNC = { fg = p.text, bg = p.bg },
    NvimTreeEndOfBuffer = { fg = p.bg },
    NvimTreeCursorLine = { bg = p.highlight },
    NvimTreeVertSplit = { fg = p.highlight, bg = p.bg },
    NvimTreeWinSeparator = { fg = p.highlight, bg = p.bg },
    NvimTreeStatusLine = { fg = p.bg, bg = p.bg },
    NvimTreeStatusLineNC = { fg = p.bg, bg = p.bg },

    -- Window picker
    NvimTreeWindowPicker = { fg = p.bg, bg = p.water, bold = true },

    -- Indent markers
    NvimTreeIndentMarker = { fg = p.highlight },

    -- LSP diagnostics
    NvimTreeLspDiagnosticsError = { fg = p.blood },
    NvimTreeLspDiagnosticsWarning = { fg = p.glowglobe },
    NvimTreeLspDiagnosticsInformation = { fg = p.ibad },
    NvimTreeLspDiagnosticsHint = { fg = p.water },

    -- Bookmarks
    NvimTreeBookmark = { fg = p.dusk },

    -- Clipboard
    NvimTreeCopiedHL = { fg = p.oasis, bold = true },
    NvimTreeCutHL = { fg = p.blood, bold = true },
  }
  return highlights
end

return M
