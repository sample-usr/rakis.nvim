local M = {}
local util = require("rakis.util")

--- Get extension configuration
--- @param options Config
--- @param p RakisPalette
function M.get(options, p)
  options = options or {}
  local highlights = {
    Comment = { fg = p.subtle, italic = options.italic_comments }, -- any comment
    ColorColumn = { bg = p.overlay }, -- used for the columns set with 'colorcolumn'
    Conceal = { fg = p.muted }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor = { fg = p.bg, bg = p.text }, -- character under the cursor
    ICursor = { fg = p.bg, bg = p.text }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM = { fg = p.bg, bg = p.text }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn = { bg = p.surface }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine = { bg = p.surface }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory = { fg = p.ibad }, -- directory names (and other special names in listings)
    DiffAdd = { bg = util.blend(p.bg_solid, p.oasis, 0.8) }, -- diff mode: Added line |diff.txt|
    DiffChange = { bg = util.blend(p.bg_solid, p.ibad, 0.8) },
    DiffDelete = { bg = util.blend(p.bg_solid, p.blood, 0.8) },
    DiffText = { bg = util.blend(p.bg_solid, p.spice, 0.8) },
    Added = { fg = p.oasis },
    Removed = { fg = p.blood },
    EndOfBuffer = { fg = p.faint }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    ErrorMsg = { fg = p.blood }, -- error messages on the command line
    VertSplit = { fg = p.overlay, bg = p.bg }, -- the column separating vertically split windows
    WinSeparator = { fg = p.overlay, bg = p.bg }, -- the column separating vertically split windows
    Folded = { fg = p.subtle, bg = p.overlay }, -- line used for closed folds
    FoldColumn = { fg = p.muted, bg = p.bg },
    SignColumn = { fg = p.muted, bg = p.bg }, -- column where |signs| are displayed
    SignColumnSB = { fg = p.muted }, -- column where |signs| are displayed
    Substitute = { fg = p.bg, bg = p.glowglobe }, -- |:substitute| replacement text highlighting
    LineNr = { fg = p.muted }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr = { fg = p.spice }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen = { fg = p.glowglobe, bg = p.highlight, bold = true }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg = { fg = p.text }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea = { fg = p.text }, -- Area for messages and cmdline
    MoreMsg = { fg = p.ibad }, -- |more-prompt|
    NonText = { fg = p.faint }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal = { fg = p.text, bg = p.bg }, -- normal text
    NormalNC = { fg = util.blend(p.text, p.subtle, 0.5), bg = p.bg }, -- normal text in non-current windows
    NormalSB = { fg = p.subtle, bg = p.surface }, -- normal text in sidebar
    NormalFloat = { fg = p.text, bg = p.surface },
    FloatTitle = { fg = p.spice, bg = p.surface },
    FloatBorder = { fg = p.highlight, bg = p.surface },
    Pmenu = { fg = p.text, bg = p.surface },
    PmenuSel = { fg = p.text, bg = p.highlight },
    PmenuSbar = { bg = p.overlay },
    PmenuThumb = { bg = p.muted },
    PmenuKind = { fg = p.water, bg = p.surface },
    PmenuKindSel = { fg = p.water, bg = p.highlight },
    PmenuExtra = { fg = p.subtle, bg = p.surface },
    PmenuExtraSel = { fg = p.subtle, bg = p.highlight },
    Question = { fg = p.glowglobe },
    QuickFixLine = { bg = p.overlay },
    Search = { fg = p.bg, bg = p.subtle },
    IncSearch = { fg = p.bg, bg = p.glowglobe },
    CurSearch = { fg = p.bg, bg = p.glowglobe },
    SpecialKey = { fg = p.muted },
    SpellBad = { sp = p.blood, undercurl = true },
    SpellCap = { sp = p.glowglobe, undercurl = true },
    SpellLocal = { sp = p.ibad, undercurl = true },
    SpellRare = { sp = p.dusk, undercurl = true },
    StatusLine = { fg = p.text, bg = p.surface },
    StatusLineNC = { fg = p.muted, bg = p.surface },
    TabLine = { fg = p.subtle, bg = p.surface },
    TabLineFill = { bg = p.bg },
    TabLineSel = { fg = p.text, bg = p.overlay },
    WinBar = { fg = p.subtle, bg = p.bg },
    WinBarNC = { fg = p.muted, bg = p.bg },
    Title = { fg = p.spice, bold = true },
    Visual = { bg = p.highlight },
    VisualNOS = { bg = p.highlight },
    WarningMsg = { fg = p.glowglobe },
    Whitespace = { fg = p.faint },
    WildMenu = { fg = p.bg, bg = p.ibad },

    Constant = { fg = p.dusk }, -- (preferred) any constant
    String = { fg = p.oasis }, --   a string constant: "this is a string"
    Character = { fg = p.oasis }, --  a character constant: 'c', '\n'
    Boolean = { fg = p.dusk }, --  a boolean constant: TRUE, false
    Number = { fg = p.glowglobe },

    Identifier = { fg = p.water }, -- (preferred) any variable name
    Function = { fg = p.ibad }, -- function name (also: methods for classes)
    Statement = { fg = p.spice }, -- (preferred) any statement
    Operator = { fg = p.bloom }, -- "sizeof", "+", "*", etc.
    Keyword = { fg = p.spice }, --  any other keyword
    PreProc = { fg = p.water },
    Label = { fg = p.spice },

    Type = { fg = p.water },

    Special = { fg = p.spice },
    Delimiter = { fg = p.muted },

    Debug = { fg = p.blood },
    Error = { fg = p.blood },
    Todo = { fg = p.dusk, bold = true },

    qfLineNr = { fg = p.muted },
    qfFileName = { fg = p.ibad },

    htmlH1 = { fg = p.spice, bold = true },
    htmlH2 = { fg = p.glowglobe, bold = true },

    mkdCodeDelimiter = { fg = p.muted },
    mkdCodeStart = { fg = p.water },
    mkdCodeEnd = { fg = p.water },

    markdownHeadingDelimiter = { fg = p.muted },
    markdownCode = { fg = p.water },
    markdownCodeBlock = { fg = p.water },
    markdownH1 = { fg = p.spice, bold = true },
    markdownH2 = { fg = p.glowglobe, bold = true },
    markdownH3 = { fg = p.oasis, bold = true },
    markdownH4 = { fg = p.water, bold = true },
    markdownH5 = { fg = p.ibad, bold = true },
    markdownH6 = { fg = p.dusk, bold = true },
    markdownLinkText = { fg = p.ibad, underline = true },

    LspReferenceText = { bg = p.overlay },
    LspReferenceRead = { bg = p.overlay },
    LspReferenceWrite = { bg = p.overlay },

    DiagnosticError = { fg = p.blood },
    DiagnosticWarn = { fg = p.glowglobe },
    DiagnosticInfo = { fg = p.ibad },
    DiagnosticHint = { fg = p.water },
    DiagnosticOk = { fg = p.oasis },
    DiagnosticUnnecessary = { fg = p.muted },

    DiagnosticDefaultError = { link = "DiagnosticError" },
    DiagnosticDefaultWarn = { link = "DiagnosticWarn" },
    DiagnosticDefaultInfo = { link = "DiagnosticInfo" },
    DiagnosticDefaultHint = { link = "DiagnosticHint" },
    DiagnosticDefaultOk = { link = "DiagnosticOk" },

    DiagnosticFloatingError = { link = "DiagnosticError" },
    DiagnosticFloatingWarn = { link = "DiagnosticWarn" },
    DiagnosticFloatingInfo = { link = "DiagnosticInfo" },
    DiagnosticFloatingHint = { link = "DiagnosticHint" },
    DiagnosticFloatingOk = { link = "DiagnosticOk" },

    DiagnosticSignError = { link = "DiagnosticError" },
    DiagnosticSignWarn = { link = "DiagnosticWarn" },
    DiagnosticSignInfo = { link = "DiagnosticInfo" },
    DiagnosticSignHint = { link = "DiagnosticHint" },
    DiagnosticSignOk = { link = "DiagnosticOk" },

    DiagnosticVirtualTextError = { fg = p.blood, bg = util.blend(p.bg_solid, p.blood, 0.9) },
    DiagnosticVirtualTextWarn = { fg = p.glowglobe, bg = util.blend(p.bg_solid, p.glowglobe, 0.9) },
    DiagnosticVirtualTextInfo = { fg = p.ibad, bg = util.blend(p.bg_solid, p.ibad, 0.9) },
    DiagnosticVirtualTextHint = { fg = p.water, bg = util.blend(p.bg_solid, p.water, 0.9) },
    DiagnosticVirtualTextOk = { fg = p.oasis, bg = util.blend(p.bg_solid, p.oasis, 0.9) },

    DiagnosticUnderlineError = { undercurl = true, sp = p.blood },
    DiagnosticUnderlineWarn = { undercurl = true, sp = p.glowglobe },
    DiagnosticUnderlineInfo = { undercurl = true, sp = p.ibad },
    DiagnosticUnderlineHint = { undercurl = true, sp = p.water },
    DiagnosticUnderlineOk = { undercurl = true, sp = p.oasis },

    LspSignatureActiveParameter = { fg = p.spice },
    LspCodeLens = { fg = p.muted },
    LspInlayHint = { fg = p.muted, bg = util.blend(p.bg_solid, p.muted, 0.9) },
    LspInfoBorder = { fg = p.highlight },

    -- Health check
    healthError = { fg = p.blood },
    healthSuccess = { fg = p.oasis },
    healthWarning = { fg = p.glowglobe },

    -- Diff links
    diffAdded = { link = "DiffAdd" },
    diffChanged = { link = "DiffChange" },
    diffRemoved = { link = "DiffDelete" },
  }

  return highlights
end
return M
