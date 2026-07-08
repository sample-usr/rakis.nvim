local M = {}

--- Get blink.cmp highlights
--- Saghen/blink.cmp - modern completion engine
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- Menu window
    BlinkCmpMenu = { fg = p.text, bg = p.surface },
    BlinkCmpMenuBorder = { fg = p.highlight, bg = p.surface },
    BlinkCmpMenuSelection = { bg = p.highlight },

    -- Documentation window
    BlinkCmpDoc = { bg = p.surface },
    BlinkCmpDocSeparator = { bg = p.surface },
    BlinkCmpDocBorder = { fg = p.highlight },

    -- Ghost text
    BlinkCmpGhostText = { fg = p.subtle, italic = true },

    -- Labels
    BlinkCmpLabel = { fg = p.text },
    BlinkCmpLabelDeprecated = { fg = p.subtle, strikethrough = true },
    BlinkCmpLabelMatch = { fg = p.spice, bold = true },

    -- Kind icons
    BlinkCmpDefault = { fg = p.muted },
    BlinkCmpKindText = { fg = p.oasis },
    BlinkCmpKindMethod = { fg = p.ibad },
    BlinkCmpKindFunction = { fg = p.ibad },
    BlinkCmpKindConstructor = { fg = p.ibad },
    BlinkCmpKindField = { fg = p.water },
    BlinkCmpKindVariable = { fg = p.text },
    BlinkCmpKindClass = { fg = p.water },
    BlinkCmpKindInterface = { fg = p.water },
    BlinkCmpKindModule = { fg = p.water },
    BlinkCmpKindProperty = { fg = p.water },
    BlinkCmpKindUnit = { fg = p.glowglobe },
    BlinkCmpKindValue = { fg = p.glowglobe },
    BlinkCmpKindKeyword = { fg = p.spice },
    BlinkCmpKindSnippet = { fg = p.bloom },
    BlinkCmpKindColor = { fg = p.bloom },
    BlinkCmpKindFile = { fg = p.water },
    BlinkCmpKindReference = { fg = p.water },
    BlinkCmpKindFolder = { fg = p.ibad },
    BlinkCmpKindEnum = { fg = p.water },
    BlinkCmpKindEnumMember = { fg = p.water },
    BlinkCmpKindConstant = { fg = p.dusk },
    BlinkCmpKindStruct = { fg = p.water },
    BlinkCmpKindEvent = { fg = p.spice },
    BlinkCmpKindOperator = { fg = p.bloom },
    BlinkCmpKindTypeParameter = { fg = p.water },

    -- AI completion providers
    BlinkCmpKindCodeium = { fg = p.water },
    BlinkCmpKindCopilot = { fg = p.water },
    BlinkCmpKindSupermaven = { fg = p.water },
    BlinkCmpKindTabNine = { fg = p.water },
  }
  return highlights
end

return M
