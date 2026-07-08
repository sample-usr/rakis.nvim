local M = {}

--- Get fzf-lua highlights
--- ibhagwan/fzf-lua - fuzzy finder
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- Window
    FzfLuaNormal = { fg = p.text, bg = p.bg },
    FzfLuaBorder = { fg = p.highlight, bg = p.bg },
    FzfLuaTitle = { fg = p.water, bg = p.bg, bold = true },
    FzfLuaPreviewNormal = { fg = p.text, bg = p.bg },
    FzfLuaPreviewBorder = { fg = p.highlight, bg = p.bg },
    FzfLuaPreviewTitle = { fg = p.water, bg = p.bg, bold = true },

    -- Cursor
    FzfLuaCursor = { fg = p.bg, bg = p.text },
    FzfLuaCursorLine = { fg = p.text, bg = p.overlay },
    FzfLuaCursorLineNr = { fg = p.spice, bg = p.overlay },

    -- Search
    FzfLuaSearch = { fg = p.glowglobe, bg = p.bg },
    FzfLuaHeaderBind = { fg = p.spice },
    FzfLuaHeaderText = { fg = p.water },

    -- File info
    FzfLuaPath = { fg = p.subtle },
    FzfLuaFilePart = { fg = p.text },
    FzfLuaDirPart = { fg = p.water },

    -- Buffer flags
    FzfLuaBufFlagCur = { fg = p.spice },
    FzfLuaBufFlagAlt = { fg = p.subtle },

    -- Tab line
    FzfLuaTabTitle = { fg = p.water, bold = true },
    FzfLuaTabMarker = { fg = p.spice },

    -- Scrollbar
    FzfLuaScrollBorderEmpty = { fg = p.highlight },
    FzfLuaScrollBorderFull = { fg = p.water },
    FzfLuaScrollFloatEmpty = { fg = p.highlight },
    FzfLuaScrollFloatFull = { fg = p.water },

    -- Help
    FzfLuaHelpNormal = { fg = p.text, bg = p.bg },
    FzfLuaHelpBorder = { fg = p.highlight, bg = p.bg },
  }
  return highlights
end

return M
