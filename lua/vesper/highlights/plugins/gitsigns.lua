local M = {}

M.get = function(theme)
  local diff = theme.diff

  return {
    GitSignsAdd = { fg = diff.add },
    GitSignsChange = { fg = diff.change },
    GitSignsDelete = { fg = diff.delete },

    GitSignsAddNr = { fg = diff.add },
    GitSignsChangeNr = { fg = diff.change },
    GitSignsDeleteNr = { fg = diff.delete },

    GitSignsAddLn = { bg = diff.add_bg },
    GitSignsChangeLn = { bg = diff.change_bg },
    GitSignsDeleteLn = { bg = diff.delete_bg },

    GitSignsCurrentLineBlame = { fg = theme.ui.subtle, italic = true },
  }
end

return M
