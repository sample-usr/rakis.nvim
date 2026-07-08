local M = {}

--- Get lualine.nvim highlights
--- nvim-lualine/lualine.nvim - statusline
--- Note: Lualine has its own theme system, but we provide base highlights
--- @param opts Config
--- @param p RakisPalette
function M.get(opts, p)
  opts = opts or {}
  local highlights = {
    -- Normal mode
    lualine_a_normal = { fg = p.bg, bg = p.ibad, bold = true },
    lualine_b_normal = { fg = p.text, bg = p.highlight },
    lualine_c_normal = { fg = p.subtle, bg = p.bg },

    -- Insert mode
    lualine_a_insert = { fg = p.bg, bg = p.oasis, bold = true },
    lualine_b_insert = { fg = p.text, bg = p.highlight },
    lualine_c_insert = { fg = p.subtle, bg = p.bg },

    -- Visual mode
    lualine_a_visual = { fg = p.bg, bg = p.dusk, bold = true },
    lualine_b_visual = { fg = p.text, bg = p.highlight },
    lualine_c_visual = { fg = p.subtle, bg = p.bg },

    -- Replace mode
    lualine_a_replace = { fg = p.bg, bg = p.spice, bold = true },
    lualine_b_replace = { fg = p.text, bg = p.highlight },
    lualine_c_replace = { fg = p.subtle, bg = p.bg },

    -- Command mode
    lualine_a_command = { fg = p.bg, bg = p.glowglobe, bold = true },
    lualine_b_command = { fg = p.text, bg = p.highlight },
    lualine_c_command = { fg = p.subtle, bg = p.bg },

    -- Inactive
    lualine_a_inactive = { fg = p.subtle, bg = p.bg },
    lualine_b_inactive = { fg = p.subtle, bg = p.bg },
    lualine_c_inactive = { fg = p.subtle, bg = p.bg },

    -- Terminal
    lualine_a_terminal = { fg = p.bg, bg = p.water, bold = true },
    lualine_b_terminal = { fg = p.text, bg = p.highlight },
    lualine_c_terminal = { fg = p.subtle, bg = p.bg },

    -- Diagnostics
    lualine_diagnostics_error_normal = { fg = p.blood },
    lualine_diagnostics_warn_normal = { fg = p.glowglobe },
    lualine_diagnostics_info_normal = { fg = p.ibad },
    lualine_diagnostics_hint_normal = { fg = p.water },

    -- Diff
    lualine_diff_added_normal = { fg = p.oasis },
    lualine_diff_modified_normal = { fg = p.glowglobe },
    lualine_diff_removed_normal = { fg = p.blood },
  }
  return highlights
end

return M
