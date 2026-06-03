local M = {}

M.get = function(theme)
  local ui = theme.ui
  local syn = theme.syn

  return {
    FFFSelectedActive = { fg = syn.orange, bg = ui.bg_selected, bold = true },
  }
end

return M
