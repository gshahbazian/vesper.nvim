local M = {}

M.get = function(theme)
  local ui = theme.ui
  local syn = theme.syn
  local diff = theme.diff

  return {
    -- Windows
    SnacksPicker = { fg = ui.fg, bg = ui.bg },
    SnacksPickerBorder = { fg = ui.float_border, bg = ui.bg },
    SnacksPickerInput = { fg = ui.fg, bg = ui.bg },
    SnacksPickerInputBorder = { fg = ui.float_border, bg = ui.bg },
    SnacksPickerInputSearch = { fg = syn.orange, bold = true },
    SnacksPickerList = { fg = ui.fg, bg = ui.bg },
    SnacksPickerListBorder = { fg = ui.float_border, bg = ui.bg },
    SnacksPickerListCursorLine = { bg = ui.bg_selected },
    SnacksPickerPreview = { fg = ui.fg, bg = ui.bg },
    SnacksPickerPreviewBorder = { fg = ui.float_border, bg = ui.bg },
    SnacksPickerPreviewCursorLine = { bg = ui.bg_raised },
    SnacksPickerBox = { bg = ui.bg },
    SnacksPickerPickWin = { fg = syn.orange, bold = true },

    -- Titles and prompt
    SnacksPickerTitle = { fg = ui.bg, bg = syn.orange, bold = true },
    SnacksPickerPreviewTitle = { fg = ui.bg, bg = syn.orange, bold = true },
    SnacksPickerPrompt = { fg = syn.orange },
    SnacksPickerTotals = { fg = ui.muted },

    -- Selection and matching
    SnacksPickerMatch = { fg = syn.orange, bold = true },
    SnacksPickerSearch = { fg = syn.orange, bold = true },
    SnacksPickerSelected = { fg = syn.orange, bold = true },
    SnacksPickerUnselected = { fg = ui.subtle },

    -- Files and paths
    SnacksPickerFile = { fg = ui.fg },
    SnacksPickerDir = { fg = ui.soft },
    SnacksPickerDirectory = { fg = syn.orange },
    SnacksPickerPathIgnored = { fg = ui.subtle },
    SnacksPickerPathHidden = { fg = ui.subtle },
    SnacksPickerIcon = { fg = ui.soft },

    -- Text styling
    SnacksPickerBold = { bold = true },
    SnacksPickerCode = { fg = syn.orange, bg = ui.bg_raised },
    SnacksPickerItalic = { italic = true },
    SnacksPickerDelim = { fg = ui.soft },
    SnacksPickerComment = { fg = ui.muted, italic = true },
    SnacksPickerDesc = { fg = ui.soft },
    SnacksPickerLabel = { fg = syn.orange },
    SnacksPickerLink = { fg = syn.orange, underline = true },
    SnacksPickerLinkBroken = { fg = syn.red, strikethrough = true },
    SnacksPickerRule = { fg = ui.border },
    SnacksPickerDimmed = { fg = ui.subtle },
    SnacksPickerSpecial = { fg = syn.orange },
    SnacksPickerSpinner = { fg = syn.orange },

    -- Positional
    SnacksPickerRow = { fg = ui.muted },
    SnacksPickerCol = { fg = ui.muted },
    SnacksPickerIdx = { fg = ui.muted },
    SnacksPickerTree = { fg = ui.border },
    SnacksPickerTime = { fg = ui.soft },

    -- Buffers and diagnostics
    SnacksPickerBufNr = { fg = ui.muted },
    SnacksPickerBufFlags = { fg = syn.orange },
    SnacksPickerBufType = { fg = ui.muted },
    SnacksPickerFileType = { fg = ui.muted },
    SnacksPickerDiagnosticSource = { fg = ui.muted },
    SnacksPickerDiagnosticCode = { fg = ui.muted },

    -- Keymaps and commands
    SnacksPickerCmd = { fg = syn.orange },
    SnacksPickerCmdBuiltin = { fg = syn.orange },
    SnacksPickerKeymapMode = { fg = ui.soft },
    SnacksPickerKeymapLhs = { fg = syn.orange, bold = true },
    SnacksPickerKeymapRhs = { fg = ui.soft },
    SnacksPickerKeymapNowait = { fg = syn.orange },
    SnacksPickerToggle = { fg = syn.aqua },

    -- Autocmd and man
    SnacksPickerAuEvent = { fg = syn.orange },
    SnacksPickerAuPattern = { fg = syn.orange },
    SnacksPickerAuGroup = { fg = syn.orange },
    SnacksPickerManPage = { fg = syn.orange, bold = true },
    SnacksPickerManSection = { fg = syn.orange },
    SnacksPickerManDesc = { fg = ui.soft },

    -- Register and undo
    SnacksPickerRegister = { fg = syn.orange },
    SnacksPickerUndoAdded = { fg = diff.add },
    SnacksPickerUndoRemoved = { fg = diff.delete },
    SnacksPickerUndoCurrent = { fg = syn.orange, bold = true },
    SnacksPickerUndoSaved = { fg = syn.aqua },

    -- LSP
    SnacksPickerLspEnabled = { fg = syn.aqua },
    SnacksPickerLspDisabled = { fg = ui.subtle },
    SnacksPickerLspAttached = { fg = syn.aqua },
    SnacksPickerLspAttachedBuf = { fg = syn.orange },
    SnacksPickerLspUnavailable = { fg = ui.subtle },

    -- Icon kinds (LSP symbols)
    SnacksPickerIconArray = { fg = syn.orange },
    SnacksPickerIconBoolean = { fg = syn.constant },
    SnacksPickerIconClass = { fg = syn.type },
    SnacksPickerIconConstant = { fg = syn.constant },
    SnacksPickerIconConstructor = { fg = syn.type },
    SnacksPickerIconEnum = { fg = syn.type },
    SnacksPickerIconEnumMember = { fg = syn.constant },
    SnacksPickerIconEvent = { fg = syn.orange },
    SnacksPickerIconField = { fg = syn.property },
    SnacksPickerIconFile = { fg = ui.soft },
    SnacksPickerIconFunction = { fg = syn.func },
    SnacksPickerIconInterface = { fg = syn.type },
    SnacksPickerIconKey = { fg = syn.orange },
    SnacksPickerIconMethod = { fg = syn.method },
    SnacksPickerIconModule = { fg = syn.orange },
    SnacksPickerIconNamespace = { fg = syn.orange },
    SnacksPickerIconNull = { fg = ui.subtle },
    SnacksPickerIconNumber = { fg = syn.number },
    SnacksPickerIconObject = { fg = syn.orange },
    SnacksPickerIconOperator = { fg = syn.operator },
    SnacksPickerIconPackage = { fg = syn.orange },
    SnacksPickerIconProperty = { fg = syn.property },
    SnacksPickerIconString = { fg = syn.string },
    SnacksPickerIconStruct = { fg = syn.type },
    SnacksPickerIconTypeParameter = { fg = syn.type },
    SnacksPickerIconVariable = { fg = syn.variable },

    -- Dashboard
    SnacksDashboardHeader = { fg = ui.border },
    SnacksDashboardKey = { fg = syn.orange, bold = true },
    SnacksDashboardDesc = { fg = syn.orange },
    SnacksDashboardIcon = { fg = syn.orange },
    SnacksDashboardFooter = { fg = ui.muted, italic = true },

    -- Indent
    SnacksIndent = { fg = ui.border },
    SnacksIndentScope = { fg = ui.subtle },
  }
end

return M
