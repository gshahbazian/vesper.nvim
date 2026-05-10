local M = {}

M.get = function(theme)
  local ui = theme.ui

  return {
    TreesitterContext = { bg = ui.bg_raised },
    TreesitterContextLineNumber = { fg = ui.subtle, bg = ui.bg_raised },
  }
end

return M
