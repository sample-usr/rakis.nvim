local M = {}

--- Get aerial.nvim highlights
--- stevearc/aerial.nvim - code outline
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- Window
    AerialNormal = { fg = p.fg, bg = p.bg },
    AerialNormalNC = { fg = p.fg, bg = p.bg },
    AerialLine = { bg = p.bg_highlight },
    AerialGuide = { fg = p.bg_highlight },

    -- Icons (LSP kinds)
    AerialArrayIcon = { fg = p.yellow03 },
    AerialBooleanIcon = { fg = p.cyan02 },
    AerialClassIcon = { fg = p.yellow03 },
    AerialConstantIcon = { fg = p.cyan01 },
    AerialConstructorIcon = { fg = p.cyan03 },
    AerialEnumIcon = { fg = p.cyan03 },
    AerialEnumMemberIcon = { fg = p.cyan03 },
    AerialEventIcon = { fg = p.cyan03 },
    AerialFieldIcon = { fg = p.cyan03 },
    AerialFileIcon = { fg = p.fg },
    AerialFunctionIcon = { fg = p.blue02 },
    AerialInterfaceIcon = { fg = p.yellow03 },
    AerialKeyIcon = { fg = p.violet02 },
    AerialMethodIcon = { fg = p.blue02 },
    AerialModuleIcon = { fg = p.fg },
    AerialNamespaceIcon = { fg = p.fg },
    AerialNullIcon = { fg = p.red03 },
    AerialNumberIcon = { fg = p.orange01 },
    AerialObjectIcon = { fg = p.yellow03 },
    AerialOperatorIcon = { fg = p.magenta02 },
    AerialPackageIcon = { fg = p.fg },
    AerialPropertyIcon = { fg = p.cyan03 },
    AerialStringIcon = { fg = p.green01 },
    AerialStructIcon = { fg = p.cyan03 },
    AerialTypeParameterIcon = { fg = p.violet02 },
    AerialVariableIcon = { fg = p.fg },
  }
  return highlights
end

return M
