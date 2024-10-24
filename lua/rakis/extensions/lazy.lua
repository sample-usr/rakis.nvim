local M = {}

--- Get extension configuration
--- @param options Config
--- @param p RakisPalette
function M.get(options, p)
  options = options or {}
  local highlights = {
    LazyH1 = { fg = p.orange03, bold = true },
    LazyH2 = { fg = p.fg, bold = true },
    LazyButton = { fg = p.fg, bg = p.base03 },
    LazyButtonActive = { fg = p.fg, bg = p.base03, bold = true },

    LazyProgressDone = { bold = true, fg = p.magenta03 },
    LazyProgressTodo = { bold = true, fg = p.base02 },

    LazyReasonCmd = { fg = p.yellow03 },
    LazyReasonEvent = { fg = p.magenta03 },
    LazyReasonKeys = { fg = p.cyan03 },
    LazyReasonPlugin = { fg = p.green03 },
    LazyReasonRequire = { fg = p.violet03 },
    LazyReasonRuntime = { fg = p.red02 },
    LazyReasonStart = { fg = p.base02 },
    LazySpecial = { fg = p.cyan01 },

    Bold = { fg = p.base02, bold = true, italic = true },
  }
  return highlights
end
return M
