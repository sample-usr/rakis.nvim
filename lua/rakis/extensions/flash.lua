local util = require("rakis.util")
local M = {}

--- Get flash.nvim and leap.nvim highlights
--- folke/flash.nvim & ggandor/leap.nvim - fast navigation
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- Flash.nvim
    FlashBackdrop = { fg = p.muted },
    FlashCurrent = { fg = p.bg, bg = p.water, bold = true },
    FlashLabel = { fg = p.bg, bg = p.blood, bold = true },
    FlashMatch = { fg = p.water, bg = util.blend(p.bg_solid, p.water, 0.8) },
    FlashPrompt = { fg = p.text, bg = p.surface },
    FlashPromptIcon = { fg = p.water },

    -- Leap.nvim
    LeapBackdrop = { fg = p.muted },
    LeapLabelPrimary = { fg = p.bg, bg = p.blood, bold = true },
    LeapLabelSecondary = { fg = p.bg, bg = p.water },
    LeapLabelSelected = { fg = p.bg, bg = p.glowglobe },
    LeapMatch = { fg = p.water, bg = util.blend(p.bg_solid, p.water, 0.8), bold = true },

    -- Hop.nvim (another navigation plugin)
    HopNextKey = { fg = p.blood, bg = util.blend(p.bg_solid, p.blood, 0.8), bold = true },
    HopNextKey1 = { fg = p.water, bg = util.blend(p.bg_solid, p.water, 0.8), bold = true },
    HopNextKey2 = { fg = p.ibad, bg = util.blend(p.bg_solid, p.ibad, 0.8) },
    HopUnmatched = { fg = p.muted },
  }
  return highlights
end

return M
