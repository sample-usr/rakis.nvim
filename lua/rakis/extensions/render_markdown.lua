local util = require("rakis.util")
local M = {}

--- Get render-markdown.nvim highlights
--- MeanderingProgrammer/render-markdown.nvim - enhanced markdown rendering
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- Headings with backgrounds
    RenderMarkdownH1Bg = { bg = util.blend(p.bg_solid, p.spice, 0.8) },
    RenderMarkdownH2Bg = { bg = util.blend(p.bg_solid, p.glowglobe, 0.8) },
    RenderMarkdownH3Bg = { bg = util.blend(p.bg_solid, p.oasis, 0.8) },
    RenderMarkdownH4Bg = { bg = util.blend(p.bg_solid, p.water, 0.8) },
    RenderMarkdownH5Bg = { bg = util.blend(p.bg_solid, p.ibad, 0.8) },
    RenderMarkdownH6Bg = { bg = util.blend(p.bg_solid, p.dusk, 0.8) },

    -- Code blocks
    RenderMarkdownCode = { bg = p.surface },
    RenderMarkdownCodeInline = { fg = p.water, bg = p.overlay },

    -- Lists
    RenderMarkdownBullet = { fg = p.spice },
    RenderMarkdownChecked = { fg = p.oasis, bold = true },
    RenderMarkdownUnchecked = { fg = p.muted, bold = true },

    -- Quotes and separators
    RenderMarkdownQuote = { fg = p.subtle, italic = true },
    RenderMarkdownDash = { fg = p.subtle },

    -- Tables
    RenderMarkdownTableHead = { fg = p.water, bold = true },
    RenderMarkdownTableRow = { fg = p.subtle },
    RenderMarkdownTableFill = { link = "Conceal" },

    -- Links (not usually styled, use default markdown)
    RenderMarkdownLink = { fg = p.ibad, underline = true },

    -- Misc
    RenderMarkdownSign = { fg = p.subtle },
  }
  return highlights
end

return M
