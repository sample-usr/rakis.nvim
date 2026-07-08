local M = {}

--- Get LSP semantic token highlights
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- LSP Semantic Token Types
    ["@lsp.type.comment"] = {},
    ["@lsp.type.comment.c"] = { link = "@comment" },
    ["@lsp.type.comment.cpp"] = { link = "@comment" },
    ["@lsp.type.enum"] = { link = "@type" },
    ["@lsp.type.interface"] = { fg = p.water },
    ["@lsp.type.keyword"] = { link = "@keyword" },
    ["@lsp.type.namespace"] = { fg = p.text },
    ["@lsp.type.namespace.python"] = { link = "@variable" },
    ["@lsp.type.parameter"] = { link = "@variable.parameter" },
    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.variable"] = {},
    ["@lsp.type.variable.svelte"] = { link = "@variable" },

    -- LSP Semantic Token Modifiers
    ["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.operator.injected"] = { link = "@operator" },
    ["@lsp.typemod.string.injected"] = { link = "@string" },
    ["@lsp.typemod.variable.constant"] = { link = "@constant" },
    ["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
    ["@lsp.typemod.variable.injected"] = { link = "@variable" },
  }
  return highlights
end

return M
