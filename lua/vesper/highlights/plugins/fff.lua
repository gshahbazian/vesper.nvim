local M = {}

M.get = function(theme)
  local ui = theme.ui
  local syn = theme.syn
  local diff = theme.diff

  return {
    -- Selection
    FFFSelected = { fg = syn.orange, bold = true },
    FFFSelectedActive = { fg = syn.orange, bg = ui.bg_selected, bold = true },

    -- File info panel
    FFFFileInfoSection = { fg = syn.orange, bold = true },
    FFFFileInfoSeparator = { fg = ui.float_border },
    FFFFileInfoLabel = { fg = ui.muted, italic = true },
    FFFFileInfoValue = { fg = ui.fg },
    FFFFileInfoValueDim = { fg = ui.dim },
    FFFFileInfoSize = { fg = syn.aqua },
    FFFFileInfoType = { fg = syn.orange },
    FFFFileInfoPath = { fg = ui.soft },
    FFFFileInfoScorePos = { fg = diff.add },
    FFFFileInfoScoreNeg = { fg = diff.delete },
    FFFFileInfoTotalScore = { fg = syn.orange, bold = true },
    FFFFileInfoMatchType = { fg = syn.aqua, bold = true },

    -- Git status text (filename)
    FFFGitStaged = { fg = diff.add },
    FFFGitModified = { fg = diff.change },
    FFFGitDeleted = { fg = diff.delete },
    FFFGitRenamed = { fg = syn.aqua },
    FFFGitUntracked = { fg = diff.add },
    FFFGitIgnored = { fg = ui.subtle },

    -- Git sign column borders
    FFFGitSignStaged = { fg = diff.add },
    FFFGitSignModified = { fg = diff.change },
    FFFGitSignDeleted = { fg = diff.delete },
    FFFGitSignRenamed = { fg = syn.aqua },
    FFFGitSignUntracked = { fg = diff.add },
    FFFGitSignIgnored = { fg = ui.subtle },

    -- Git sign column borders (selected/cursor row)
    FFFGitSignStagedSelected = { fg = diff.add, bg = ui.bg_selected },
    FFFGitSignModifiedSelected = { fg = diff.change, bg = ui.bg_selected },
    FFFGitSignDeletedSelected = { fg = diff.delete, bg = ui.bg_selected },
    FFFGitSignRenamedSelected = { fg = syn.aqua, bg = ui.bg_selected },
    FFFGitSignUntrackedSelected = { fg = diff.add, bg = ui.bg_selected },
    FFFGitSignIgnoredSelected = { fg = ui.subtle, bg = ui.bg_selected },
  }
end

return M
