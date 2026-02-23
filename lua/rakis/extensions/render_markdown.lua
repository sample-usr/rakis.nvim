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
    RenderMarkdownH1Bg = { bg = util.blend(p.bg_solid, p.blue03, 0.8) },
    RenderMarkdownH2Bg = { bg = util.blend(p.bg_solid, p.cyan03, 0.8) },
    RenderMarkdownH3Bg = { bg = util.blend(p.bg_solid, p.blue02, 0.8) },
    RenderMarkdownH4Bg = { bg = util.blend(p.bg_solid, p.violet03, 0.8) },
    RenderMarkdownH5Bg = { bg = util.blend(p.bg_solid, p.violet02, 0.8) },
    RenderMarkdownH6Bg = { bg = util.blend(p.bg_solid, p.green03, 0.8) },

    -- Code blocks
    RenderMarkdownCode = { bg = p.bg_highlight },
    RenderMarkdownCodeInline = { fg = p.cyan03, bg = p.bg_highlight },

    -- Lists
    RenderMarkdownBullet = { fg = p.orange03 },
    RenderMarkdownChecked = { fg = p.green02, bold = true },
    RenderMarkdownUnchecked = { fg = p.magenta03, bold = true },

    -- Quotes and separators
    RenderMarkdownQuote = { fg = p.base01, italic = true },
    RenderMarkdownDash = { fg = p.base01 },

    -- Tables
    RenderMarkdownTableHead = { fg = p.cyan03, bold = true },
    RenderMarkdownTableRow = { fg = p.base01 },
    RenderMarkdownTableFill = { link = "Conceal" },

    -- Links (not usually styled, use default markdown)
    RenderMarkdownLink = { fg = p.blue03, underline = true },

    -- Misc
    RenderMarkdownSign = { fg = p.base01 },
  }
  return highlights
end

return M
