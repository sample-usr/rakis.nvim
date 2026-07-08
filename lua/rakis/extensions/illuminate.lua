local M = {}

--- Get vim-illuminate highlights
--- RRethy/vim-illuminate - highlight word under cursor
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    IlluminatedWordText = { link = "LspReferenceText" },
    IlluminatedWordRead = { link = "LspReferenceRead" },
    IlluminatedWordWrite = { link = "LspReferenceWrite" },
    IlluminatedWord = { bg = p.overlay },
    IlluminatedCurWord = { bg = p.overlay },
  }
  return highlights
end

return M
