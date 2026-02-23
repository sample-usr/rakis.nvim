local M = {}

--- Get blink.cmp highlights
--- Saghen/blink.cmp - modern completion engine
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- Documentation window
    BlinkCmpDoc = { bg = p.bg_secondary },
    BlinkCmpDocSeparator = { bg = p.bg_secondary },
    BlinkCmpDocBorder = { fg = p.bg_highlight },

    -- Ghost text
    BlinkCmpGhostText = { fg = p.base01, italic = true },

    -- Labels
    BlinkCmpLabel = { fg = p.base01 },
    BlinkCmpLabelDeprecated = { fg = p.base01, strikethrough = true },
    BlinkCmpLabelMatch = { fg = p.fg, bold = true },

    -- Kind icons
    BlinkCmpDefault = { fg = p.base02 },
    BlinkCmpKindText = { fg = p.orange03 },
    BlinkCmpKindMethod = { fg = p.cyan03 },
    BlinkCmpKindFunction = { fg = p.cyan03 },
    BlinkCmpKindConstructor = { fg = p.cyan03 },
    BlinkCmpKindField = { fg = p.orange03 },
    BlinkCmpKindVariable = { fg = p.blue02 },
    BlinkCmpKindClass = { fg = p.yellow03 },
    BlinkCmpKindInterface = { fg = p.yellow03 },
    BlinkCmpKindModule = { fg = p.cyan03 },
    BlinkCmpKindProperty = { fg = p.cyan03 },
    BlinkCmpKindUnit = { fg = p.orange03 },
    BlinkCmpKindValue = { fg = p.red03 },
    BlinkCmpKindKeyword = { fg = p.violet02 },
    BlinkCmpKindSnippet = { fg = p.blue02 },
    BlinkCmpKindColor = { fg = p.red03 },
    BlinkCmpKindFile = { fg = p.cyan03 },
    BlinkCmpKindReference = { fg = p.red03 },
    BlinkCmpKindFolder = { fg = p.cyan03 },
    BlinkCmpKindEnum = { fg = p.cyan03 },
    BlinkCmpKindEnumMember = { fg = p.cyan03 },
    BlinkCmpKindConstant = { fg = p.yellow03 },
    BlinkCmpKindStruct = { fg = p.cyan03 },
    BlinkCmpKindEvent = { fg = p.cyan03 },
    BlinkCmpKindOperator = { fg = p.cyan03 },
    BlinkCmpKindTypeParameter = { fg = p.violet02 },

    -- AI completion providers
    BlinkCmpKindCodeium = { fg = p.cyan03 },
    BlinkCmpKindCopilot = { fg = p.cyan03 },
    BlinkCmpKindSupermaven = { fg = p.cyan03 },
    BlinkCmpKindTabNine = { fg = p.cyan03 },
  }
  return highlights
end

return M
