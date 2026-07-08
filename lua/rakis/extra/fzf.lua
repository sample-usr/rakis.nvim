local colors = require("rakis.colors")
local util = require("rakis.util")

local M = {}

--- Generate the theme for fzf.
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
  local t = colors[variant]
  -- variant is not in the palette table, inject it manually
  t = vim.tbl_extend("force", t, { variant = variant })
  local template = [==[
# rakis-${variant} theme for fzf
# Source in your shell startup file (bash/zsh):
#   source path/to/rakis.sh
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  --color=fg:${subtle},bg:-1,hl:${spice} \
  --color=fg+:${text},bg+:${overlay},hl+:${spice} \
  --color=border:${highlight},header:${ibad},gutter:-1 \
  --color=spinner:${glowglobe},info:${water},separator:${overlay} \
  --color=pointer:${spice},marker:${oasis},prompt:${bloom}"
]==]

  return util.parse_extra_template(template, t)
end

return M
