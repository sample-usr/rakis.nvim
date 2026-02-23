local M = {}

--- Get fzf-lua highlights
--- ibhagwan/fzf-lua - fuzzy finder
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- Window
    FzfLuaNormal = { fg = p.fg, bg = p.bg },
    FzfLuaBorder = { fg = p.bg_highlight, bg = p.bg },
    FzfLuaTitle = { fg = p.cyan03, bg = p.bg, bold = true },
    FzfLuaPreviewNormal = { fg = p.fg, bg = p.bg },
    FzfLuaPreviewBorder = { fg = p.bg_highlight, bg = p.bg },
    FzfLuaPreviewTitle = { fg = p.cyan03, bg = p.bg, bold = true },

    -- Cursor
    FzfLuaCursor = { fg = p.bg, bg = p.fg },
    FzfLuaCursorLine = { fg = p.fg, bg = p.bg_highlight },
    FzfLuaCursorLineNr = { fg = p.orange03, bg = p.bg_highlight },

    -- Search
    FzfLuaSearch = { fg = p.yellow03, bg = p.bg },
    FzfLuaHeaderBind = { fg = p.orange03 },
    FzfLuaHeaderText = { fg = p.cyan03 },

    -- File info
    FzfLuaPath = { fg = p.base01 },
    FzfLuaFilePart = { fg = p.fg },
    FzfLuaDirPart = { fg = p.cyan03 },

    -- Buffer flags
    FzfLuaBufFlagCur = { fg = p.orange03 },
    FzfLuaBufFlagAlt = { fg = p.base01 },

    -- Tab line
    FzfLuaTabTitle = { fg = p.cyan03, bold = true },
    FzfLuaTabMarker = { fg = p.orange03 },

    -- Scrollbar
    FzfLuaScrollBorderEmpty = { fg = p.bg_highlight },
    FzfLuaScrollBorderFull = { fg = p.cyan03 },
    FzfLuaScrollFloatEmpty = { fg = p.bg_highlight },
    FzfLuaScrollFloatFull = { fg = p.cyan03 },

    -- Help
    FzfLuaHelpNormal = { fg = p.fg, bg = p.bg },
    FzfLuaHelpBorder = { fg = p.bg_highlight, bg = p.bg },
  }
  return highlights
end

return M
