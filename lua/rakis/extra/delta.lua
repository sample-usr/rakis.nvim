local colors = require("rakis.colors")
local util = require("rakis.util")

local M = {}

--- Generate the theme for delta.
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
  local t = colors[variant]
  -- variant, mode and the blended diff backgrounds are not in the palette
  -- table, inject them manually
  t = vim.tbl_extend("force", t, {
    variant = variant,
    delta_mode = variant == "light" and "light" or "dark",
    minus_bg = util.blend(t.blood, t.bg, 0.2),
    minus_emph_bg = util.blend(t.blood, t.bg, 0.35),
    plus_bg = util.blend(t.oasis, t.bg, 0.2),
    plus_emph_bg = util.blend(t.oasis, t.bg, 0.35),
  })
  local template = [==[
# rakis-${variant} theme for delta
# Include in your ~/.gitconfig:
#   [include]
#       path = path/to/rakis.gitconfig
#   [delta]
#       features = rakis-${variant}
[delta "rakis-${variant}"]
    ${delta_mode} = true
    line-numbers = true
    hunk-header-style = file line-number syntax
    hunk-header-decoration-style = "${overlay}" box
    file-style = "${spice}" bold
    file-decoration-style = "${overlay}" ul
    line-numbers-left-style = "${muted}"
    line-numbers-right-style = "${muted}"
    line-numbers-minus-style = "${blood}"
    line-numbers-plus-style = "${oasis}"
    line-numbers-zero-style = "${muted}"
    minus-style = syntax "${minus_bg}"
    minus-emph-style = syntax "${minus_emph_bg}"
    plus-style = syntax "${plus_bg}"
    plus-emph-style = syntax "${plus_emph_bg}"
    zero-style = syntax
    whitespace-error-style = "${blood}" reverse
]==]

  return util.parse_extra_template(template, t)
end

return M
