local M = {}

M.get = function(theme)
  local syn = theme.syn

  return {
    FlashLabel = { fg = theme.ui.bg, bg = syn.orange, bold = true },
    FlashMatch = { fg = syn.orange },
    FlashCurrent = { fg = theme.ui.bg, bg = syn.aqua },
    FlashBackdrop = { fg = syn.comment },
  }
end

return M
