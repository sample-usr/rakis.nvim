local M = {}

--- Get barbar.nvim highlights
--- romgrk/barbar.nvim - buffer bar
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- Current buffer
    BufferCurrent = { fg = p.text, bg = p.overlay },
    BufferCurrentIndex = { fg = p.text, bg = p.overlay },
    BufferCurrentMod = { fg = p.water, bg = p.overlay },
    BufferCurrentSign = { fg = p.subtle, bg = p.overlay },
    BufferCurrentTarget = { fg = p.glowglobe, bg = p.overlay },
    BufferCurrentIcon = { bg = p.overlay },

    -- Visible buffers
    BufferVisible = { fg = p.text, bg = p.bg },
    BufferVisibleIndex = { fg = p.subtle, bg = p.bg },
    BufferVisibleMod = { fg = p.water, bg = p.bg },
    BufferVisibleSign = { fg = p.muted, bg = p.bg },
    BufferVisibleTarget = { fg = p.glowglobe, bg = p.bg },
    BufferVisibleIcon = { bg = p.bg },

    -- Inactive buffers
    BufferInactive = { fg = p.subtle, bg = p.bg },
    BufferInactiveIndex = { fg = p.subtle, bg = p.bg },
    BufferInactiveMod = { fg = p.water, bg = p.bg },
    BufferInactiveSign = { fg = p.muted, bg = p.bg },
    BufferInactiveTarget = { fg = p.glowglobe, bg = p.bg },
    BufferInactiveIcon = { bg = p.bg },

    -- Tab pages
    BufferTabpageFill = { bg = p.bg },
    BufferTabpages = { fg = p.water, bg = p.bg, bold = true },

    -- Scrolling
    BufferOffset = { fg = p.water, bg = p.bg, bold = true },

    -- Alternate buffer
    BufferAlternate = { fg = p.subtle, bg = p.bg },
    BufferAlternateIndex = { fg = p.subtle, bg = p.bg },
    BufferAlternateMod = { fg = p.water, bg = p.bg },
    BufferAlternateSign = { fg = p.muted, bg = p.bg },
    BufferAlternateTarget = { fg = p.glowglobe, bg = p.bg },
  }
  return highlights
end

return M
