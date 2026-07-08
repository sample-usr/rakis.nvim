local util = require("rakis.util")
local M = {}

--- Get extension configuration
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- Variables
    ["@variable"] = { fg = p.text, italic = opts.italic_comments },
    ["@variable.builtin"] = { fg = p.dusk, italic = opts.italic_comments, bold = true },
    ["@variable.parameter"] = { fg = util.blend(p.spice, p.text, 0.5), italic = opts.italic_comments },
    ["@variable.parameter.builtin"] = { fg = util.blend(p.spice, p.text, 0.5), italic = opts.italic_comments, bold = true },
    ["@variable.member"] = { fg = p.water },

    -- Constants
    ["@constant"] = { link = "Constant" },
    ["@constant.builtin"] = { fg = p.dusk, bold = true },
    ["@constant.macro"] = { link = "Define" },

    -- Modules
    ["@module"] = { fg = p.text },
    ["@module.builtin"] = { fg = p.text, bold = true },

    -- Labels
    ["@label"] = { link = "Label" },

    -- Strings
    ["@string"] = { link = "String" },
    ["@string.documentation"] = { fg = p.oasis, italic = true },
    ["@string.regexp"] = { fg = p.dusk },
    ["@string.escape"] = { fg = p.spice },
    ["@string.special"] = { link = "SpecialChar" },
    ["@string.special.symbol"] = { link = "Identifier" },
    ["@string.special.url"] = { fg = p.ibad, underline = true },
    ["@string.special.path"] = { fg = p.water },

    -- Characters
    ["@character"] = { link = "Character" },
    ["@character.special"] = { link = "SpecialChar" },

    -- Booleans & Numbers
    ["@boolean"] = { link = "Boolean" },
    ["@number"] = { link = "Number" },
    ["@number.float"] = { link = "Float" },
    ["@float"] = { link = "Float" },

    -- Types
    ["@type"] = { link = "Type" },
    ["@type.builtin"] = { fg = p.water, bold = true },
    ["@type.definition"] = { link = "Typedef" },
    ["@type.qualifier"] = { link = "@keyword" },

    -- Attributes & Properties
    ["@attribute"] = { fg = p.dusk },
    ["@attribute.builtin"] = { fg = p.dusk, bold = true },
    ["@property"] = { fg = p.water, italic = opts.italic_comments },

    -- Functions
    ["@function"] = { link = "Function" },
    ["@function.builtin"] = { fg = p.ibad, bold = true },
    ["@function.call"] = { link = "@function" },
    ["@function.macro"] = { link = "Macro" },
    ["@function.method"] = { fg = p.ibad },
    ["@function.method.call"] = { fg = p.ibad },

    -- Constructors
    ["@constructor"] = { fg = p.water },

    -- Operators
    ["@operator"] = { link = "Operator" },

    -- Keywords
    ["@keyword"] = { link = "Keyword" },
    ["@keyword.coroutine"] = { fg = p.spice },
    ["@keyword.function"] = { fg = p.spice },
    ["@keyword.operator"] = { fg = p.bloom },
    ["@keyword.import"] = { fg = p.spice },
    ["@keyword.storage"] = { fg = p.spice },
    ["@keyword.repeat"] = { fg = p.spice },
    ["@keyword.return"] = { fg = p.spice },
    ["@keyword.debug"] = { fg = p.blood },
    ["@keyword.exception"] = { fg = p.spice },
    ["@keyword.conditional"] = { fg = p.spice },
    ["@keyword.conditional.ternary"] = { fg = p.spice },
    ["@keyword.directive"] = { fg = p.dusk },
    ["@keyword.directive.define"] = { fg = p.dusk },

    -- Punctuation
    ["@punctuation.delimiter"] = { fg = p.muted },
    ["@punctuation.bracket"] = { fg = p.muted },
    ["@punctuation.special"] = { fg = p.muted },

    -- Comments
    ["@comment"] = { link = "Comment" },
    ["@comment.documentation"] = { fg = p.subtle, italic = true },
    ["@comment.error"] = { fg = p.blood, bg = util.blend(p.bg_solid, p.blood, 0.9) },
    ["@comment.warning"] = { fg = p.glowglobe, bg = util.blend(p.bg_solid, p.glowglobe, 0.9) },
    ["@comment.todo"] = { fg = p.dusk, bg = util.blend(p.bg_solid, p.dusk, 0.9) },
    ["@comment.hint"] = { fg = p.water, bg = util.blend(p.bg_solid, p.water, 0.9) },
    ["@comment.info"] = { fg = p.ibad, bg = util.blend(p.bg_solid, p.ibad, 0.9) },
    ["@comment.note"] = { fg = p.ibad, bg = util.blend(p.bg_solid, p.ibad, 0.9) },

    -- Markup (Markdown/Documentation)
    ["@markup.strong"] = { fg = p.dusk, bold = true },
    ["@markup.italic"] = { italic = true },
    ["@markup.strikethrough"] = { strikethrough = true },
    ["@markup.underline"] = { underline = true },

    ["@markup.heading"] = { fg = p.spice, bold = true },
    ["@markup.heading.1.markdown"] = { link = "markdownH1" },
    ["@markup.heading.2.markdown"] = { link = "markdownH2" },
    ["@markup.heading.3.markdown"] = { link = "markdownH3" },
    ["@markup.heading.4.markdown"] = { link = "markdownH4" },
    ["@markup.heading.5.markdown"] = { link = "markdownH5" },
    ["@markup.heading.6.markdown"] = { link = "markdownH6" },
    ["@markup.heading.1.marker.markdown"] = { link = "markdownH1" },
    ["@markup.heading.2.marker.markdown"] = { link = "markdownH2" },
    ["@markup.heading.3.marker.markdown"] = { link = "markdownH3" },
    ["@markup.heading.4.marker.markdown"] = { link = "markdownH4" },
    ["@markup.heading.5.marker.markdown"] = { link = "markdownH5" },
    ["@markup.heading.6.marker.markdown"] = { link = "markdownH6" },

    ["@markup.quote"] = { fg = p.subtle, italic = true },
    ["@markup.math"] = { link = "Special" },
    ["@markup.environment"] = { link = "Macro" },
    ["@markup.environment.name"] = { link = "Type" },

    ["@markup.link"] = { fg = p.ibad },
    ["@markup.link.label"] = { fg = p.water },
    ["@markup.link.label.markdown_inline"] = { fg = p.water },
    ["@markup.link.url"] = { fg = p.ibad, underline = true },
    ["@markup.link.markdown_inline"] = { fg = p.subtle },

    ["@markup.raw"] = { fg = p.water, bg = p.overlay },
    ["@markup.raw.block"] = { fg = p.water, bg = p.overlay },
    ["@markup.raw.delimiter.markdown"] = { fg = p.muted },
    ["@markup.raw.markdown_inline"] = { fg = p.water, bg = p.overlay },

    ["@markup.list"] = { fg = p.spice },
    ["@markup.list.checked"] = { fg = p.oasis, bold = true },
    ["@markup.list.unchecked"] = { fg = p.muted, bold = true },

    -- Diff
    ["@diff.plus"] = { fg = p.oasis, bg = util.blend(p.bg_solid, p.oasis, 0.8) },
    ["@diff.minus"] = { fg = p.blood, bg = util.blend(p.bg_solid, p.blood, 0.8) },
    ["@diff.delta"] = { fg = p.ibad, bg = util.blend(p.bg_solid, p.ibad, 0.8) },

    -- Tags (HTML/XML)
    ["@tag"] = { fg = p.water },
    ["@tag.attribute"] = { fg = p.dusk },
    ["@tag.delimiter"] = { fg = p.muted },

    -- Special
    ["@conceal"] = { link = "Conceal" },
    ["@conceal.markdown"] = { fg = p.muted },

    -- Legacy TreeSitter groups (still used by some parsers)
    ["@annotation"] = { link = "PreProc" },
    ["@conditional"] = { link = "Conditional" },
    ["@debug"] = { link = "Debug" },
    ["@define"] = { link = "Define" },
    ["@exception"] = { link = "Exception" },
    ["@field"] = { link = "@variable.member" },
    ["@include"] = { link = "Include" },
    ["@method"] = { link = "@function.method" },
    ["@method.call"] = { link = "@function.method.call" },
    ["@namespace"] = { link = "Include" },
    ["@none"] = { default = true },
    ["@parameter"] = { link = "@variable.parameter" },
    ["@preproc"] = { link = "PreProc" },
    ["@repeat"] = { link = "Repeat" },
    ["@storageclass"] = { link = "StorageClass" },
    ["@symbol"] = { link = "Identifier" },

    -- Legacy @text.* groups (deprecated but still in use)
    ["@text"] = { fg = p.text },
    ["@text.danger"] = { link = "@comment.error" },
    ["@text.emphasis"] = { italic = true },
    ["@text.environment"] = { link = "Macro" },
    ["@text.environment.name"] = { link = "Type" },
    ["@text.literal"] = { link = "String" },
    ["@text.math"] = { link = "Special" },
    ["@text.note"] = { link = "@comment.note" },
    ["@text.reference"] = { link = "Constant" },
    ["@text.strike"] = { strikethrough = true },
    ["@text.strong"] = { bold = true },
    ["@text.title"] = { link = "markdownH1" },
    ["@text.title.1"] = { link = "markdownH1" },
    ["@text.title.2"] = { link = "markdownH2" },
    ["@text.title.3"] = { link = "markdownH3" },
    ["@text.title.4"] = { link = "markdownH4" },
    ["@text.title.5"] = { link = "markdownH5" },
    ["@text.title.6"] = { link = "markdownH6" },
    ["@text.title.1.markdown"] = { link = "markdownH1" },
    ["@text.title.2.markdown"] = { link = "markdownH2" },
    ["@text.title.3.markdown"] = { link = "markdownH3" },
    ["@text.title.4.markdown"] = { link = "markdownH4" },
    ["@text.title.5.markdown"] = { link = "markdownH5" },
    ["@text.title.6.markdown"] = { link = "markdownH6" },
    ["@text.title.1.marker.markdown"] = { link = "markdownH1" },
    ["@text.title.2.marker.markdown"] = { link = "markdownH2" },
    ["@text.title.3.marker.markdown"] = { link = "markdownH3" },
    ["@text.title.4.marker.markdown"] = { link = "markdownH4" },
    ["@text.title.5.marker.markdown"] = { link = "markdownH5" },
    ["@text.title.6.marker.markdown"] = { link = "markdownH6" },
    ["@text.todo"] = { link = "@comment.todo" },
    ["@text.underline"] = { underline = true },
    ["@text.uri"] = { link = "@markup.link.url" },
    ["@text.warning"] = { link = "@comment.warning" },
  }
  return highlights
end

return M
