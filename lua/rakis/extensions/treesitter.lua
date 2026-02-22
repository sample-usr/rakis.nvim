local util = require("rakis.util")
local M = {}

--- Get extension configuration
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- Variables
    ["@variable"] = { fg = p.fg, italic = opts.italic_comments },
    ["@variable.builtin"] = { fg = p.cyan02, italic = opts.italic_comments, bold = true },
    ["@variable.parameter"] = { fg = p.orange02, italic = opts.italic_comments },
    ["@variable.parameter.builtin"] = { fg = p.orange02, italic = opts.italic_comments, bold = true },
    ["@variable.member"] = { fg = p.cyan03 },

    -- Constants
    ["@constant"] = { link = "Constant" },
    ["@constant.builtin"] = { fg = p.cyan02, bold = true },
    ["@constant.macro"] = { link = "Define" },

    -- Modules
    ["@module"] = { fg = p.fg },
    ["@module.builtin"] = { fg = p.fg, bold = true },

    -- Labels
    ["@label"] = { link = "Label" },

    -- Strings
    ["@string"] = { link = "String" },
    ["@string.documentation"] = { fg = p.green02, italic = true },
    ["@string.regexp"] = { fg = p.violet02 },
    ["@string.escape"] = { fg = p.orange03 },
    ["@string.special"] = { link = "SpecialChar" },
    ["@string.special.symbol"] = { link = "Identifier" },
    ["@string.special.url"] = { fg = p.blue03, underline = true },
    ["@string.special.path"] = { fg = p.cyan03 },

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
    ["@type.builtin"] = { fg = util.blend(p.violet02, p.magenta03, 0.65), bold = true },
    ["@type.definition"] = { link = "Typedef" },
    ["@type.qualifier"] = { link = "@keyword" },

    -- Attributes & Properties
    ["@attribute"] = { fg = p.violet02 },
    ["@attribute.builtin"] = { fg = p.violet02, bold = true },
    ["@property"] = { fg = p.cyan03, italic = opts.italic_comments },

    -- Functions
    ["@function"] = { link = "Function" },
    ["@function.builtin"] = { fg = p.blue02, bold = true },
    ["@function.call"] = { link = "@function" },
    ["@function.macro"] = { link = "Macro" },
    ["@function.method"] = { fg = p.blue02 },
    ["@function.method.call"] = { fg = p.violet02 },

    -- Constructors
    ["@constructor"] = { fg = p.cyan03 },

    -- Operators
    ["@operator"] = { link = "Operator" },

    -- Keywords
    ["@keyword"] = { link = "Keyword" },
    ["@keyword.coroutine"] = { fg = p.orange03 },
    ["@keyword.function"] = { fg = p.orange03 },
    ["@keyword.operator"] = { fg = p.magenta02 },
    ["@keyword.import"] = { fg = p.orange03 },
    ["@keyword.storage"] = { fg = p.cyan03 },
    ["@keyword.repeat"] = { fg = p.orange03 },
    ["@keyword.return"] = { fg = p.orange03 },
    ["@keyword.debug"] = { fg = p.red01 },
    ["@keyword.exception"] = { fg = p.orange03 },
    ["@keyword.conditional"] = { fg = p.orange03 },
    ["@keyword.conditional.ternary"] = { fg = p.orange03 },
    ["@keyword.directive"] = { fg = p.violet02 },
    ["@keyword.directive.define"] = { fg = p.violet02 },

    -- Punctuation
    ["@punctuation.delimiter"] = { fg = p.base01 },
    ["@punctuation.bracket"] = { fg = p.base01 },
    ["@punctuation.special"] = { fg = p.base01 },

    -- Comments
    ["@comment"] = { link = "Comment" },
    ["@comment.documentation"] = { fg = p.base01, italic = true },
    ["@comment.error"] = { fg = p.red02, bg = util.blend(p.bg_solid, p.red02, 0.9) },
    ["@comment.warning"] = { fg = p.yellow02, bg = util.blend(p.bg_solid, p.yellow02, 0.9) },
    ["@comment.todo"] = { fg = p.violet02, bg = util.blend(p.bg_solid, p.violet02, 0.9) },
    ["@comment.hint"] = { fg = p.cyan02, bg = util.blend(p.bg_solid, p.cyan02, 0.9) },
    ["@comment.info"] = { fg = p.blue02, bg = util.blend(p.bg_solid, p.blue02, 0.9) },
    ["@comment.note"] = { fg = p.blue02, bg = util.blend(p.bg_solid, p.blue02, 0.9) },

    -- Markup (Markdown/Documentation)
    ["@markup.strong"] = { fg = p.violet01, bold = true },
    ["@markup.italic"] = { fg = p.blue03, italic = true },
    ["@markup.strikethrough"] = { strikethrough = true },
    ["@markup.underline"] = { underline = true },

    ["@markup.heading"] = { fg = p.cyan03, bold = true },
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

    ["@markup.quote"] = { fg = p.base01, italic = true },
    ["@markup.math"] = { link = "Special" },
    ["@markup.environment"] = { link = "Macro" },
    ["@markup.environment.name"] = { link = "Type" },

    ["@markup.link"] = { fg = p.blue03 },
    ["@markup.link.label"] = { fg = p.cyan03 },
    ["@markup.link.label.markdown_inline"] = { fg = p.cyan03 },
    ["@markup.link.url"] = { fg = p.blue03, underline = true },
    ["@markup.link.markdown_inline"] = { fg = p.base01 },

    ["@markup.raw"] = { fg = p.cyan03, bg = p.bg_highlight },
    ["@markup.raw.block"] = { fg = p.cyan03, bg = p.bg_highlight },
    ["@markup.raw.delimiter.markdown"] = { fg = p.base01 },
    ["@markup.raw.markdown_inline"] = { fg = p.cyan03, bg = p.bg_highlight },

    ["@markup.list"] = { fg = p.orange03 },
    ["@markup.list.checked"] = { fg = p.green02, bold = true },
    ["@markup.list.unchecked"] = { fg = p.magenta03, bold = true },

    -- Diff
    ["@diff.plus"] = { fg = p.green03, bg = util.blend(p.bg_solid, p.green03, 0.8) },
    ["@diff.minus"] = { fg = p.red03, bg = util.blend(p.bg_solid, p.red03, 0.8) },
    ["@diff.delta"] = { fg = p.blue03, bg = util.blend(p.bg_solid, p.blue03, 0.8) },

    -- Tags (HTML/XML)
    ["@tag"] = { fg = p.cyan03 },
    ["@tag.attribute"] = { fg = p.violet02 },
    ["@tag.delimiter"] = { fg = p.base01 },

    -- Special
    ["@conceal"] = { link = "Conceal" },
    ["@conceal.markdown"] = { fg = p.base01 },

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
    ["@text"] = { fg = p.fg },
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
