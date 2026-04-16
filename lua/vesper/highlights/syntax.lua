local M = {}

M.get = function(theme)
  local ui = theme.ui
  local syn = theme.syn
  local diag = theme.diag
  local diff = theme.diff

  return {
    -- Comments
    Comment = { fg = syn.comment },

    -- Constants
    Constant = { fg = syn.constant },
    String = { fg = syn.string },
    Character = { fg = syn.string },
    Number = { fg = syn.number },
    Boolean = { fg = syn.constant },
    Float = { fg = syn.number },

    -- Identifiers
    Identifier = { fg = syn.variable },
    Function = { fg = syn.func },

    -- Statements
    Statement = { fg = syn.keyword },
    Conditional = { fg = syn.keyword },
    Repeat = { fg = syn.keyword },
    Label = { fg = syn.orange },
    Operator = { fg = syn.operator },
    Keyword = { fg = syn.keyword },
    Exception = { fg = syn.keyword },

    -- Preprocessor
    PreProc = { fg = syn.preproc },
    Include = { fg = syn.preproc },
    Define = { fg = syn.preproc },
    Macro = { fg = syn.orange },
    PreCondit = { fg = syn.preproc },

    -- Types
    Type = { fg = syn.type },
    StorageClass = { fg = syn.keyword },
    Structure = { fg = syn.type },
    Typedef = { fg = syn.type },

    -- Special
    Special = { fg = syn.orange },
    SpecialChar = { fg = syn.orange },
    Tag = { fg = syn.orange },
    Delimiter = { fg = syn.operator },
    SpecialComment = { fg = syn.comment },
    Debug = { fg = diag.error },

    -- Text styling
    Underlined = { fg = syn.orange, underline = true },
    Bold = { bold = true },
    Italic = { italic = true },

    -- Diagnostics & tasks
    Error = { fg = diag.error },
    Todo = { fg = syn.orange, bg = ui.bg_raised },

    -- Diff
    Added = { fg = diff.add },
    Changed = { fg = diff.change },
    Removed = { fg = diff.delete },

    -- diff filetype syntax
    diffAdded = { fg = diff.add },
    diffRemoved = { fg = diff.delete },
    diffChanged = { fg = diff.change },
    diffOldFile = { fg = diff.delete },
    diffNewFile = { fg = diff.add },
    diffFile = { fg = syn.orange },
    diffLine = { fg = syn.orange },
    diffIndexLine = { fg = ui.soft },
    diffSubname = { fg = ui.soft },
  }
end

return M
