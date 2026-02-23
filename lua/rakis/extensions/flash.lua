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
    FlashBackdrop = { fg = p.base01 },
    FlashCurrent = { fg = p.bg, bg = p.cyan03, bold = true },
    FlashLabel = { fg = p.bg, bg = p.red03, bold = true },
    FlashMatch = { fg = p.cyan03, bg = util.blend(p.bg_solid, p.cyan03, 0.8) },
    FlashPrompt = { fg = p.fg, bg = p.bg },
    FlashPromptIcon = { fg = p.cyan03 },

    -- Leap.nvim
    LeapBackdrop = { fg = p.base01 },
    LeapLabelPrimary = { fg = p.bg, bg = p.red03, bold = true },
    LeapLabelSecondary = { fg = p.bg, bg = p.cyan03 },
    LeapLabelSelected = { fg = p.bg, bg = p.yellow03 },
    LeapMatch = { fg = p.cyan03, bg = util.blend(p.bg_solid, p.cyan03, 0.8), bold = true },

    -- Hop.nvim (another navigation plugin)
    HopNextKey = { fg = p.red03, bg = util.blend(p.bg_solid, p.red03, 0.8), bold = true },
    HopNextKey1 = { fg = p.cyan03, bg = util.blend(p.bg_solid, p.cyan03, 0.8), bold = true },
    HopNextKey2 = { fg = p.blue03, bg = util.blend(p.bg_solid, p.blue03, 0.8) },
    HopUnmatched = { fg = p.base01 },
  }
  return highlights
end

return M
