local M = {}

--- Get barbar.nvim highlights
--- romgrk/barbar.nvim - buffer bar
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- Current buffer
    BufferCurrent = { fg = p.fg, bg = p.bg_highlight },
    BufferCurrentIndex = { fg = p.fg, bg = p.bg_highlight },
    BufferCurrentMod = { fg = p.cyan03, bg = p.bg_highlight },
    BufferCurrentSign = { fg = p.base01, bg = p.bg_highlight },
    BufferCurrentTarget = { fg = p.yellow03, bg = p.bg_highlight },
    BufferCurrentIcon = { bg = p.bg_highlight },

    -- Visible buffers
    BufferVisible = { fg = p.base01, bg = p.bg },
    BufferVisibleIndex = { fg = p.base01, bg = p.bg },
    BufferVisibleMod = { fg = p.cyan03, bg = p.bg },
    BufferVisibleSign = { fg = p.base02, bg = p.bg },
    BufferVisibleTarget = { fg = p.yellow03, bg = p.bg },
    BufferVisibleIcon = { bg = p.bg },

    -- Inactive buffers
    BufferInactive = { fg = p.base01, bg = p.bg },
    BufferInactiveIndex = { fg = p.base01, bg = p.bg },
    BufferInactiveMod = { fg = p.cyan03, bg = p.bg },
    BufferInactiveSign = { fg = p.base02, bg = p.bg },
    BufferInactiveTarget = { fg = p.yellow03, bg = p.bg },
    BufferInactiveIcon = { bg = p.bg },

    -- Tab pages
    BufferTabpageFill = { bg = p.bg },
    BufferTabpages = { fg = p.cyan03, bg = p.bg, bold = true },

    -- Scrolling
    BufferOffset = { fg = p.cyan03, bg = p.bg, bold = true },

    -- Alternate buffer
    BufferAlternate = { fg = p.base01, bg = p.bg },
    BufferAlternateIndex = { fg = p.base01, bg = p.bg },
    BufferAlternateMod = { fg = p.cyan03, bg = p.bg },
    BufferAlternateSign = { fg = p.base02, bg = p.bg },
    BufferAlternateTarget = { fg = p.yellow03, bg = p.bg },
  }
  return highlights
end

return M
