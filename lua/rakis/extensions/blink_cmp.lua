local M = {}

--- Get blink.cmp highlights
--- Saghen/blink.cmp - modern completion engine
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- Documentation window
    BlinkCmpDoc = { bg = p.surface },
    BlinkCmpDocSeparator = { bg = p.surface },
    BlinkCmpDocBorder = { fg = p.highlight },

    -- Ghost text
    BlinkCmpGhostText = { fg = p.subtle, italic = true },

    -- Labels
    BlinkCmpLabel = { fg = p.subtle },
    BlinkCmpLabelDeprecated = { fg = p.subtle, strikethrough = true },
    BlinkCmpLabelMatch = { fg = p.text, bold = true },

    -- Kind icons
    BlinkCmpDefault = { fg = p.muted },
    BlinkCmpKindText = { fg = p.spice },
    BlinkCmpKindMethod = { fg = p.water },
    BlinkCmpKindFunction = { fg = p.water },
    BlinkCmpKindConstructor = { fg = p.water },
    BlinkCmpKindField = { fg = p.spice },
    BlinkCmpKindVariable = { fg = p.ibad },
    BlinkCmpKindClass = { fg = p.glowglobe },
    BlinkCmpKindInterface = { fg = p.glowglobe },
    BlinkCmpKindModule = { fg = p.water },
    BlinkCmpKindProperty = { fg = p.water },
    BlinkCmpKindUnit = { fg = p.spice },
    BlinkCmpKindValue = { fg = p.blood },
    BlinkCmpKindKeyword = { fg = p.dusk },
    BlinkCmpKindSnippet = { fg = p.ibad },
    BlinkCmpKindColor = { fg = p.blood },
    BlinkCmpKindFile = { fg = p.water },
    BlinkCmpKindReference = { fg = p.blood },
    BlinkCmpKindFolder = { fg = p.water },
    BlinkCmpKindEnum = { fg = p.water },
    BlinkCmpKindEnumMember = { fg = p.water },
    BlinkCmpKindConstant = { fg = p.glowglobe },
    BlinkCmpKindStruct = { fg = p.water },
    BlinkCmpKindEvent = { fg = p.water },
    BlinkCmpKindOperator = { fg = p.water },
    BlinkCmpKindTypeParameter = { fg = p.dusk },

    -- AI completion providers
    BlinkCmpKindCodeium = { fg = p.water },
    BlinkCmpKindCopilot = { fg = p.water },
    BlinkCmpKindSupermaven = { fg = p.water },
    BlinkCmpKindTabNine = { fg = p.water },
  }
  return highlights
end

return M
