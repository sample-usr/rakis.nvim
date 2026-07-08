-- Palette quality gate. Run from the repo root:
--   lua tests/palette_contrast.lua   (or: nvim -l tests/palette_contrast.lua)
--
-- Fails if any text-role color drops below its WCAG contrast threshold,
-- if two accents get close enough to confuse, or if an accent's hue
-- drifts between the dark and light variants.

package.path = "./lua/?.lua;./lua/?/init.lua;" .. package.path
local colors = require("rakis.colors")

local function hex_to_rgb(hex)
  return tonumber(hex:sub(2, 3), 16), tonumber(hex:sub(4, 5), 16), tonumber(hex:sub(6, 7), 16)
end

local function relative_luminance(hex)
  local r, g, b = hex_to_rgb(hex)
  local function channel(c)
    c = c / 255
    if c <= 0.03928 then
      return c / 12.92
    end
    return ((c + 0.055) / 1.055) ^ 2.4
  end
  return 0.2126 * channel(r) + 0.7152 * channel(g) + 0.0722 * channel(b)
end

local function contrast(a, b)
  local la, lb = relative_luminance(a), relative_luminance(b)
  if la < lb then
    la, lb = lb, la
  end
  return (la + 0.05) / (lb + 0.05)
end

local function rgb_distance(a, b)
  local ar, ag, ab = hex_to_rgb(a)
  local br, bg, bb = hex_to_rgb(b)
  return math.sqrt((ar - br) ^ 2 + (ag - bg) ^ 2 + (ab - bb) ^ 2)
end

local function hue(hex)
  local r, g, b = hex_to_rgb(hex)
  r, g, b = r / 255, g / 255, b / 255
  local max, min = math.max(r, g, b), math.min(r, g, b)
  if max == min then
    return 0
  end
  local d = max - min
  local h
  if max == r then
    h = (g - b) / d % 6
  elseif max == g then
    h = (b - r) / d + 2
  else
    h = (r - g) / d + 4
  end
  return h * 60
end

local ACCENTS = { "blood", "spice", "glowglobe", "oasis", "water", "ibad", "dusk", "bloom" }

-- Minimum contrast against bg per text role. faint is decoration-only and
-- deliberately has no floor.
local TEXT_THRESHOLDS = { text = 7.0, subtle = 4.5, muted = 3.0 }
local ACCENT_THRESHOLD = 4.5

-- Minimum pairwise RGB distance between accents. The light variant is
-- inherently compressed (dark colors on cream) and its warm accents differ
-- mostly by hue, which euclidean RGB distance underweights, so it gets a
-- lower floor.
local PAIR_DISTANCE = { default = 60, light = 35 }

local HUE_DRIFT_TOLERANCE = 3

local failures = {}

local function fail(msg)
  failures[#failures + 1] = msg
end

for _, variant in ipairs({ "default", "light" }) do
  local p = colors[variant]

  for role, threshold in pairs(TEXT_THRESHOLDS) do
    local c = contrast(p[role], p.bg)
    if c < threshold then
      fail(string.format("%s: %s is %.2f:1 against bg (needs %.1f:1)", variant, role, c, threshold))
    end
  end

  for _, accent in ipairs(ACCENTS) do
    local c = contrast(p[accent], p.bg)
    if c < ACCENT_THRESHOLD then
      fail(string.format("%s: %s is %.2f:1 against bg (needs %.1f:1)", variant, accent, c, ACCENT_THRESHOLD))
    end
  end

  for i = 1, #ACCENTS do
    for j = i + 1, #ACCENTS do
      local a, b = ACCENTS[i], ACCENTS[j]
      local d = rgb_distance(p[a], p[b])
      if d < PAIR_DISTANCE[variant] then
        fail(string.format("%s: %s and %s are confusable (RGB distance %.0f, needs %d)", variant, a, b, d, PAIR_DISTANCE[variant]))
      end
    end
  end
end

for _, accent in ipairs(ACCENTS) do
  local dark_hue = hue(colors.default[accent])
  local light_hue = hue(colors.light[accent])
  local drift = math.abs(dark_hue - light_hue)
  drift = math.min(drift, 360 - drift)
  if drift > HUE_DRIFT_TOLERANCE then
    fail(string.format("%s: hue drifts between variants (dark %.0f°, light %.0f°)", accent, dark_hue, light_hue))
  end
end

if #failures > 0 then
  print(string.format("palette check FAILED (%d problems):", #failures))
  for _, msg in ipairs(failures) do
    print("  - " .. msg)
  end
  os.exit(1)
end

print("palette check passed: contrast, accent separation, and hue parity all within bounds")
