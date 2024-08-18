local config = require("rakis.config")
local M = {}

---@param c  string
local function hexToRgb(c)
  c = string.lower(c)
  return { tonumber(c:sub(2, 3), 16), tonumber(c:sub(4, 5), 16), tonumber(c:sub(6, 7), 16) }
end

---@param foreground string foreground color
---@param background string background color
---@param alpha number|string number between 0 and 1. 0 results in bg, 1 results in fg
function M.blend(foreground, background, alpha)
  alpha = type(alpha) == "string" and (tonumber(alpha, 16) / 0xff) or alpha
  local bg = hexToRgb(background)
  local fg = hexToRgb(foreground)

  local blendChannel = function(i)
    local ret = (alpha * fg[i] + ((1 - alpha) * bg[i]))
    return math.floor(math.min(math.max(0, ret), 255) + 0.5)
  end

  return string.format("#%02x%02x%02x", blendChannel(1), blendChannel(2), blendChannel(3))
end

function M.darken(hex, amount, bg)
  return M.blend(hex, bg or M.bg, amount)
end

function M.lighten(hex, amount, fg)
  return M.blend(hex, fg or M.fg, amount)
end

function M.invert_color(color)
  local hsluv = require("rakis.hsluv")
  if color ~= "NONE" then
    local hsl = hsluv.hex_to_hsluv(color)
    hsl[3] = 100 - hsl[3]
    if hsl[3] < 40 then
      hsl[3] = hsl[3] + (100 - hsl[3]) * M.day_brightness
    end
    return hsluv.hsluv_to_hex(hsl)
  end
  return color
end

-- Simple string interpolation.
--
-- Example template: "${name} is ${value}"
--
---@param str string template string
---@param table table key value pairs to replace in the string
function M.template(str, table)
  return (
    str:gsub("($%b{})", function(w)
      return vim.tbl_get(table, unpack(vim.split(w:sub(3, -2), ".", { plain = true }))) or w
    end)
  )
end

function M.syntax(syntax)
  for group, colors in pairs(syntax) do
    vim.api.nvim_set_hl(0, group, colors)
  end
end

---@param colors RakisPalette
function M.invert_colors(colors)
  if type(colors) == "string" then
    ---@diagnostic disable-next-line: return-type-mismatch
    return M.invert_color(colors)
  end
  for key, value in pairs(colors) do
    colors[key] = M.invert_colors(value)
  end
  return colors
end

---@param hls RakisHighlight
function M.invert_highlights(hls)
  for _, hl in pairs(hls) do
    if hl.fg then
      hl.fg = M.invert_color(hl.fg)
    end
    if hl.bg then
      hl.bg = M.invert_color(hl.bg)
    end
    if hl.sp then
      hl.sp = M.invert_color(hl.sp)
    end
  end
end

--- @param theme table
function M.load(theme)
  -- only needed to clear when not the default colorscheme
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "rakis"

  M.syntax(theme.highlights)
end

--- Notify the user with a message.
--- @param message string
--- @param level? "info" | "warn" | "error"
--- @param title? string
function M.notify(message, level, title)
  level = level or "info"
  title = title or " cyberdream.nvim"
  local level_int = level == "info" and 2 or level == "warn" and 3 or 4

  vim.notify(message, level_int, { title = title })
end

--- Parse a template string with a given table of colors.
--- @param template string
--- @param t table
--- @return string
function M.parse_extra_template(template, t)
  for k, v in pairs(t) do
    template = template:gsub("%${" .. k .. "}", v)
  end

  return template
end

--- Override options with a new table of values.
--- @param new_opts Config
--- @return Config
function M.set_options(new_opts)
  local opts = vim.g.rakis_opts
  vim.g.rakis_opts = vim.tbl_deep_extend("force", opts, new_opts)

  return vim.g.rakis_opts
end

--- Apply options to the colorscheme.
--- @param opts Config
function M.apply_options(opts)
  -- Update the colorscheme
  config.setup(opts)
  vim.cmd("colorscheme rakis")
end

--- Used for toggling the theme variant when the variant is set to "auto". Uses the 'set background' command to toggle between 'light' and 'dark'.
--- @return string new variant
function M.toggle_theme_auto()
  local variant = vim.o.background
  if variant == "dark" then
    variant = "light"
  else
    variant = "dark"
  end
  vim.cmd(":set background=" .. variant)
  return variant == "dark" and "default" or "light"
end

--- Toggle the theme variant between "default" and "light".
--- @return string new variant
function M.toggle_theme_variant()
  local opts = vim.g.rakis_opts
  -- Handle the "auto" variant without overwriting the value in opts.
  if opts.theme.variant == "auto" then
    return M.toggle_theme_auto()
  end

  opts.theme.variant = opts.theme.variant == "default" and "light" or "default"
  M.set_options(opts)
  M.apply_options(opts)

  return opts.theme.variant
end

return M
