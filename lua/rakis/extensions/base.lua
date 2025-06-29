local M = {}
local util = require("rakis.util")

--- Get extension configuration
--- @param options Config
--- @param p RakisPalette
function M.get(options, p)
  options = options or {}
  local highlights = {
    Comment = { fg = p.base01, italic = options.italic_comments }, -- any comment
    ColorColumn = { bg = p.bg_highlight }, -- used for the columns set with 'colorcolumn'
    Conceal = { fg = p.base02 }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor = { fg = p.bg, bg = p.fg }, -- character under the cursor
    ICursor = { fg = p.bg, bg = p.fg }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM = { fg = p.bg, bg = p.fg }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn = { bg = p.bg_highlight }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine = { bg = p.base03, sp = p.base01 }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory = { fg = p.blue03 }, -- directory names (and other special names in listings)
    DiffAdd = { bg = util.blend(p.bg_solid, p.green03, 0.8) }, -- diff mode: Added line |diff.txt|
    DiffChange = { bg = util.blend(p.bg_solid, p.blue03, 0.8) },
    DiffDelete = { bg = util.blend(p.bg_solid, p.red03, 0.8) },
    DiffText = { bg = util.blend(p.bg_solid, p.orange03, 0.8) },
    Added = { fg = p.green01 },
    Removed = { fg = p.red01 },
    EndOfBuffer = { fg = p.base02 }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    ErrorMsg = { fg = p.red03 }, -- error messages on the command line
    VertSplit = { fg = p.bg_highlight, bg = p.bg }, -- the column separating vertically split windows
    WinSeparator = { fg = p.bg_highlight, bg = p.bg }, -- the column separating vertically split windows
    Folded = { fg = p.base02, bg = p.bg, bold = true }, -- line used for closed folds
    FoldColumn = { fg = p.base02, bg = p.bg },
    SignColumn = { fg = p.base01, bg = p.bg }, -- column where |signs| are displayed
    SignColumnSB = { fg = p.base02 }, -- column where |signs| are displayed
    Substitute = { fg = p.base03, bg = p.base01 }, -- |:substitute| replacement text highlighting
    LineNr = { fg = util.blend(p.bg_highlight, p.fg, 0.8) }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr = { fg = p.orange02, sp = p.base01, bold = true }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line - spice-bright
    MatchParen = { fg = p.magenta02, bg = p.bg_highlight, bold = true }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg = { fg = p.fg }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea = { fg = p.fg }, -- Area for messages and cmdline
    MoreMsg = { fg = p.blue01 }, -- |more-prompt|
    NonText = { fg = util.blend(p.bg_solid, p.base01, 0.55) }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal = { fg = p.fg, bg = p.bg }, -- normal text
    NormalNC = { fg = util.blend(p.fg, p.base02, 0.5), bg = p.bg }, -- normal text in non-current windows
    NormalSB = { fg = p.base02, bg = p.bg }, -- normal text in sidebar
    NormalFloat = { fg = p.fg, bg = p.bg },
    FloatTitle = { fg = p.cyan03, bg = p.bg },
    FloatBorder = { fg = p.bg_highlight, bg = p.bg },
    Pmenu = { fg = p.fg, bg = p.bg },
    PmenuSel = { fg = p.fg, bg = p.bg_highlight },
    PmenuSbar = { fg = p.bg, bg = p.bg_highlight },
    PmenuThumb = { fg = p.bg, bg = p.bg_highlight },
    Question = { fg = p.yellow03 },
    QuickFixLine = { bg = p.bg_highlight },
    Search = { fg = p.bg, bg = p.yellow02 }, -- search highlighting - spice glow
    IncSearch = { fg = p.bg, bg = p.orange02 }, -- incremental search - desert sunset
    CurSearch = { fg = p.bg, bg = p.orange02 }, -- current search - desert sunset
    SpecialKey = { fg = p.base01 },
    SpellBad = { sp = p.red03, undercurl = true },
    SpellCap = { sp = p.yellow03, undercurl = true },
    SpellLocal = { sp = p.blue03, undercurl = true },
    SpellRare = { sp = p.violet03, undercurl = true },
    StatusLine = { fg = p.fg, bg = p.bg },
    StatusLineNC = { fg = p.base01, bg = p.bg },
    TabLine = { fg = p.base01, bg = p.bg },
    TabLineFill = { fg = p.base01, bg = p.bg_highlight },
    TabLineSel = { fg = p.fg, bg = p.bg_highlight },
    WinBar = { fg = p.base01, bg = p.bg },
    WinBarNC = { fg = p.base01, bg = p.bg },
    Title = { fg = p.fg },
    Visual = { bg = util.blend(p.bg_solid, p.blue02, 0.3) }, -- visual selection - desert sky
    VisualNOS = { bg = util.blend(p.bg_solid, p.blue02, 0.3) }, -- visual selection when not owning the selection
    WarningMsg = { fg = p.yellow03 },
    Whitespace = { fg = p.base03 },
    WildMenu = { fg = p.bg, bg = p.blue03 },

    Constant = { fg = p.cyan01 }, -- (preferred) any constant
    String = { fg = p.green01 }, --   a string constant: "this is a string"
    Character = { fg = p.green01 }, --  a character constant: 'c', '\n'
    Boolean = { fg = p.cyan02 }, --  a boolean constant: TRUE, false
    Number = { fg = p.orange01 },

    Identifier = { fg = p.cyan03 }, -- (preferred) any variable name
    Function = { fg = p.blue02 }, -- function name (also: methods for classes)
    Statement = { fg = p.magenta02 }, -- (preferred) any statement
    Operator = { fg = p.magenta02 }, -- "sizeof", "+", "*", etc.
    Keyword = { fg = p.orange03 }, --  any other keyword
    PreProc = { fg = p.cyan03 },
    Label = { fg = p.orange02 },

    Type = { fg = p.magenta03 },

    Special = { fg = p.orange03 },
    Delimiter = { fg = p.fg },

    Debug = { fg = p.red01 },
    Error = { fg = p.red02 },
    Todo = { fg = p.violet01, bold = true },

    qfLineNr = { fg = p.base01 },
    qfFileName = { fg = p.blue03 },

    htmlH1 = { fg = p.blue03, bold = true },
    htmlH2 = { fg = p.blue03, bold = true },

    mkdCodeDelimiter = { fg = p.base01 },
    mkdCodeStart = { fg = p.blue03 },
    mkdCodeEnd = { fg = p.blue03 },

    markdownHeadingDelimiter = { fg = p.base01 },
    markdownCode = { fg = p.cyan03 },
    markdownCodeBlock = { fg = p.cyan03 },
    markdownH1 = { fg = p.blue03, bold = true },
    markdownH2 = { fg = p.cyan03, bold = true },
    markdownH3 = { fg = p.blue02, bold = true },
    markdownH4 = { fg = p.violet03, bold = true },
    markdownH5 = { fg = p.violet02, bold = true },
    markdownH6 = { fg = p.green03, bold = true },
    markdownLinkText = { fg = p.blue01, underline = true },

    LspReferenceText = { bg = p.bg_highlight },
    LspReferenceRead = { bg = p.bg_highlight },
    LspReferenceWrite = { bg = p.bg_highlight },

    DiagnosticError = { fg = p.red02 },
    DiagnosticWarn = { fg = p.yellow02 },
    DiagnosticInfo = { fg = p.blue02 },
    DiagnosticHint = { fg = p.cyan02 },
    DiagnosticUnnecessary = { fg = p.base01 },

    DiagnosiiucVirtualTextError = { fg = p.red02 },
    DiagnosticVirtualTextWarn = { fg = p.yellow02 },
    DiagnosticVirtualTextInfo = { fg = p.blue02 },
    DiagnosticVirtualTextHint = { fg = p.cyan02 },

    DiagnosticUnderlineError = { undercurl = true, sp = p.red02 },
    DiagnosticUnderlineWarn = { undercurl = true, sp = p.yellow02 },
    DiagnosticUnderlineInfo = { undercurl = true, sp = p.blue02 },
    DiagnosticUnderlineHint = { undercurl = true, sp = p.cyan02 },

    LspSignatureActiveParameter = { fg = p.orange03 },
    LspCodeLens = { fg = p.base02 },
    LspInlayHint = { fg = p.base01 },
    LspInfoBorder = { fg = p.bg },
  }

  return highlights
end
return M
