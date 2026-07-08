local M = {}

--- Get aerial.nvim highlights
--- stevearc/aerial.nvim - code outline
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- Window
    AerialNormal = { fg = p.text, bg = p.bg },
    AerialNormalNC = { fg = p.text, bg = p.bg },
    AerialLine = { bg = p.highlight },
    AerialGuide = { fg = p.highlight },

    -- Icons (LSP kinds)
    AerialArrayIcon = { fg = p.glowglobe },
    AerialBooleanIcon = { fg = p.dusk },
    AerialClassIcon = { fg = p.water },
    AerialConstantIcon = { fg = p.dusk },
    AerialConstructorIcon = { fg = p.water },
    AerialEnumIcon = { fg = p.water },
    AerialEnumMemberIcon = { fg = p.water },
    AerialEventIcon = { fg = p.water },
    AerialFieldIcon = { fg = p.water },
    AerialFileIcon = { fg = p.text },
    AerialFunctionIcon = { fg = p.ibad },
    AerialInterfaceIcon = { fg = p.water },
    AerialKeyIcon = { fg = p.dusk },
    AerialMethodIcon = { fg = p.ibad },
    AerialModuleIcon = { fg = p.text },
    AerialNamespaceIcon = { fg = p.text },
    AerialNullIcon = { fg = p.dusk },
    AerialNumberIcon = { fg = p.glowglobe },
    AerialObjectIcon = { fg = p.water },
    AerialOperatorIcon = { fg = p.bloom },
    AerialPackageIcon = { fg = p.text },
    AerialPropertyIcon = { fg = p.water },
    AerialStringIcon = { fg = p.oasis },
    AerialStructIcon = { fg = p.water },
    AerialTypeParameterIcon = { fg = p.dusk },
    AerialVariableIcon = { fg = p.text },
  }
  return highlights
end

return M
