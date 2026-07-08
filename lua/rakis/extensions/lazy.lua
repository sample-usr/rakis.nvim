local M = {}

--- Get extension configuration
--- @param options Config
--- @param p RakisPalette
function M.get(options, p)
  options = options or {}
  local highlights = {
    LazyH1 = { fg = p.spice, bold = true },
    LazyH2 = { fg = p.text, bold = true },
    LazyButton = { fg = p.text, bg = p.overlay },
    LazyButtonActive = { fg = p.text, bg = p.overlay, bold = true },

    LazyProgressDone = { bold = true, fg = p.bloom },
    LazyProgressTodo = { bold = true, fg = p.muted },

    LazyReasonCmd = { fg = p.glowglobe },
    LazyReasonEvent = { fg = p.bloom },
    LazyReasonKeys = { fg = p.water },
    LazyReasonPlugin = { fg = p.oasis },
    LazyReasonRequire = { fg = p.dusk },
    LazyReasonRuntime = { fg = p.blood },
    LazyReasonStart = { fg = p.muted },
    LazySpecial = { fg = p.water },

    Bold = { fg = p.muted, bold = true, italic = true },
  }
  return highlights
end
return M
