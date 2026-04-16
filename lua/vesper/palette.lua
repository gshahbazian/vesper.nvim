local M = {}

local base = {
  type = "dark",
  bg_darker = "#000000",
  bg = "#101010",
  bg_cursorline = "#161616",
  bg_raised = "#1A1A1A",
  bg_selected = "#232323",
  border = "#282828",
  subtle = "#505050",
  muted = "#5C5C5C",
  dim = "#7E7E7E",
  soft = "#A0A0A0",
  fg = "#FFFFFF",
}

local accents = {
  orange = "#FFC799",
  aqua = "#99FFE4",
  red = "#FF8080",
  red_bright = "#FF9999",
  aqua_bright = "#B3FFE4",
  orange_bright = "#FFD1A8",
  gray_bright = "#B0B0B0",
  aqua_dim = "#66DDCC",
  diff_green = "#A6BE7A",
  diff_red = "#FF5757",
}

---@return table  flat palette with base ramp + accents
function M.get()
  local pal = {
    type = base.type,
    bg_darker = base.bg_darker,
    bg = base.bg,
    bg_cursorline = base.bg_cursorline,
    bg_raised = base.bg_raised,
    bg_selected = base.bg_selected,
    border = base.border,
    subtle = base.subtle,
    muted = base.muted,
    dim = base.dim,
    soft = base.soft,
    fg = base.fg,
  }

  for k, hex in pairs(accents) do
    pal[k] = hex
  end

  return pal
end

return M
