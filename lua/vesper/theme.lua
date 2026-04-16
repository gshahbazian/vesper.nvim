local util = require("vesper.util")

local M = {}

---@param p table  flat palette from palette.get()
---@param config table|nil  setup options
---@return table  structured theme with ui, syn, diag, diff, term sections
function M.setup(p, config)
  config = config or {}

  local transparent_floats = config.transparent_floats
  if transparent_floats == nil then
    transparent_floats = config.transparent
  end

  local transparent = config.transparent or false

  local bg = transparent and "NONE" or p.bg
  local bg_raised = transparent and "NONE" or p.bg_raised
  local float_bg = transparent_floats and "NONE" or p.bg

  return {

    -- UI chrome
    ui = {
      fg = p.fg,
      bg = bg,
      bg_darker = p.bg_darker,
      bg_raised = bg_raised,
      bg_selected = p.bg_selected,
      border = p.border,
      subtle = p.subtle,
      muted = p.muted,
      dim = p.dim,
      soft = p.soft,

      cursor = p.orange,
      selection = p.border,
      highlight = p.border,
      visual = p.border,

      float_bg = float_bg,
      float_border = p.fg,

      pmenu_bg = bg,
      pmenu_sel = p.bg_selected,
      pmenu_fg = p.fg,

      statusline_bg = p.bg,
      statusline_fg = p.soft,

      search_bg = p.muted,
      search_fg = p.fg,

      cursorline = p.bg_cursorline,
    },

    -- Syntax
    syn = {
      keyword = p.soft,
      func = p.orange,
      string = p.aqua,
      type = p.orange,
      constant = p.orange,
      number = p.orange,
      method = p.orange,
      property = p.fg,
      comment = p.muted,
      doc_comment = p.muted,
      operator = p.soft,
      preproc = p.soft,
      builtin = p.orange,
      variable = p.fg,
      variable_use = p.fg,
      variable_builtin = p.soft,

      -- Raw accent aliases
      orange = p.orange,
      aqua = p.aqua,
      red = p.red,
    },

    -- Diagnostics
    diag = {
      error = p.red,
      warn = p.orange,
      info = p.dim,
      hint = p.soft,

      error_bg = util.blend(p.red, p.bg, 0.1),
      warn_bg = util.blend(p.orange, p.bg, 0.1),
      info_bg = util.blend(p.dim, p.bg, 0.1),
      hint_bg = util.blend(p.soft, p.bg, 0.1),
    },

    -- Diff
    diff = {
      add = p.diff_green,
      change = p.orange,
      delete = p.diff_red,

      add_bg = util.blend(p.diff_green, p.bg, 0.15),
      change_bg = util.blend(p.orange, p.bg, 0.15),
      delete_bg = util.blend(p.diff_red, p.bg, 0.15),
      text_bg = util.blend(p.orange, p.bg, 0.30),
    },

    -- Terminal (ANSI 0-15) — from Ghostty palette
    term = {
      [0] = p.bg,
      [1] = p.red,
      [2] = p.aqua,
      [3] = p.orange,
      [4] = p.soft,
      [5] = p.orange,
      [6] = p.aqua,
      [7] = p.fg,
      [8] = p.subtle,
      [9] = p.red_bright,
      [10] = p.aqua_bright,
      [11] = p.orange_bright,
      [12] = p.gray_bright,
      [13] = p.orange,
      [14] = p.aqua_dim,
      [15] = p.fg,
    },
  }
end

return M
