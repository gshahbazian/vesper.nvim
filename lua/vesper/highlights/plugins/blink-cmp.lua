local M = {}

M.get = function(theme)
  local ui = theme.ui
  local syn = theme.syn

  return {
    BlinkCmpMenu = { fg = ui.fg, bg = ui.float_bg },
    BlinkCmpMenuBorder = { fg = ui.border, bg = ui.float_bg },
    BlinkCmpMenuSelection = { bg = ui.bg_selected },
    BlinkCmpLabel = { fg = ui.fg },
    BlinkCmpLabelMatch = { fg = syn.orange },
    BlinkCmpLabelDescription = { fg = ui.soft },
    BlinkCmpKind = { fg = syn.orange },
    BlinkCmpDoc = { fg = ui.fg, bg = ui.float_bg },
    BlinkCmpDocBorder = { fg = ui.border, bg = ui.float_bg },
    BlinkCmpSignatureHelp = { fg = ui.fg, bg = ui.float_bg },
    BlinkCmpSignatureHelpBorder = { fg = ui.border, bg = ui.float_bg },
  }
end

return M
