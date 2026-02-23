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
    lualine_a_normal = { fg = p.bg, bg = p.blue03, bold = true },
    lualine_b_normal = { fg = p.fg, bg = p.bg_highlight },
    lualine_c_normal = { fg = p.base01, bg = p.bg },

    -- Insert mode
    lualine_a_insert = { fg = p.bg, bg = p.green03, bold = true },
    lualine_b_insert = { fg = p.fg, bg = p.bg_highlight },
    lualine_c_insert = { fg = p.base01, bg = p.bg },

    -- Visual mode
    lualine_a_visual = { fg = p.bg, bg = p.violet03, bold = true },
    lualine_b_visual = { fg = p.fg, bg = p.bg_highlight },
    lualine_c_visual = { fg = p.base01, bg = p.bg },

    -- Replace mode
    lualine_a_replace = { fg = p.bg, bg = p.orange03, bold = true },
    lualine_b_replace = { fg = p.fg, bg = p.bg_highlight },
    lualine_c_replace = { fg = p.base01, bg = p.bg },

    -- Command mode
    lualine_a_command = { fg = p.bg, bg = p.yellow03, bold = true },
    lualine_b_command = { fg = p.fg, bg = p.bg_highlight },
    lualine_c_command = { fg = p.base01, bg = p.bg },

    -- Inactive
    lualine_a_inactive = { fg = p.base01, bg = p.bg },
    lualine_b_inactive = { fg = p.base01, bg = p.bg },
    lualine_c_inactive = { fg = p.base01, bg = p.bg },

    -- Terminal
    lualine_a_terminal = { fg = p.bg, bg = p.cyan03, bold = true },
    lualine_b_terminal = { fg = p.fg, bg = p.bg_highlight },
    lualine_c_terminal = { fg = p.base01, bg = p.bg },

    -- Diagnostics
    lualine_diagnostics_error_normal = { fg = p.red02 },
    lualine_diagnostics_warn_normal = { fg = p.yellow02 },
    lualine_diagnostics_info_normal = { fg = p.blue02 },
    lualine_diagnostics_hint_normal = { fg = p.cyan02 },

    -- Diff
    lualine_diff_added_normal = { fg = p.green03 },
    lualine_diff_modified_normal = { fg = p.yellow03 },
    lualine_diff_removed_normal = { fg = p.red03 },
  }
  return highlights
end

return M
