local M = {}

M.get = function(theme)
  local ui = theme.ui
  local syn = theme.syn
  local diag = theme.diag
  local diff = theme.diff

  return {
    -- Base
    Normal = { fg = ui.fg, bg = ui.bg },
    NormalFloat = { fg = ui.fg, bg = ui.float_bg },
    NormalNC = { fg = ui.fg, bg = ui.bg },

    -- Floats
    FloatBorder = { fg = ui.float_border, bg = ui.float_bg },
    FloatTitle = { fg = syn.orange, bg = ui.float_bg },

    -- Cursor
    Cursor = { fg = ui.bg, bg = ui.cursor },
    CursorLine = { bg = ui.cursorline },
    CursorColumn = { bg = ui.cursorline },
    CursorLineNr = { fg = ui.fg },

    -- Line numbers & signs
    LineNr = { fg = ui.subtle },
    SignColumn = { bg = ui.bg },

    -- Selection
    Visual = { bg = ui.visual },
    VisualNOS = { bg = ui.visual },

    -- Search
    Search = { fg = ui.search_fg, bg = ui.search_bg },
    IncSearch = { fg = ui.bg, bg = syn.orange },
    CurSearch = { fg = ui.bg, bg = syn.orange },
    Substitute = { fg = ui.bg, bg = syn.orange },

    -- Popup menu
    Pmenu = { fg = ui.pmenu_fg, bg = ui.pmenu_bg },
    PmenuSel = { fg = ui.fg, bg = ui.pmenu_sel },
    PmenuSbar = { bg = ui.bg },
    PmenuThumb = { bg = ui.border },

    -- Status line
    StatusLine = { fg = ui.statusline_fg, bg = ui.statusline_bg },
    StatusLineNC = { fg = ui.dim, bg = ui.bg },

    -- Window separators
    WinSeparator = { fg = ui.border },
    VertSplit = { link = "WinSeparator" },

    -- Tab line
    TabLine = { fg = ui.soft, bg = ui.bg },
    TabLineFill = { bg = ui.bg },
    TabLineSel = { fg = ui.fg, bg = ui.bg_raised },

    -- Titles
    Title = { fg = syn.orange },

    -- Invisible characters
    NonText = { fg = ui.dim },
    SpecialKey = { fg = ui.dim },
    Whitespace = { fg = ui.dim },
    EndOfBuffer = { fg = ui.bg },

    -- Matching brackets
    MatchParen = { fg = syn.orange, bg = ui.border },

    -- Folding
    Folded = { fg = ui.soft, bg = ui.bg_raised },
    FoldColumn = { fg = ui.dim, bg = ui.bg },

    -- File browser
    Directory = { fg = syn.orange },

    -- Messages
    Question = { fg = syn.orange },
    MoreMsg = { fg = syn.orange },
    ModeMsg = { fg = ui.soft },
    ErrorMsg = { fg = diag.error },
    WarningMsg = { fg = diag.warn },

    -- Wild menu
    WildMenu = { fg = ui.fg, bg = ui.bg_selected },

    -- Spell
    SpellBad = { undercurl = true, sp = diag.error },
    SpellCap = { undercurl = true, sp = diag.warn },
    SpellRare = { undercurl = true, sp = diag.info },
    SpellLocal = { undercurl = true, sp = diag.hint },

    -- Diff
    DiffAdd = { bg = diff.add_bg },
    DiffChange = { bg = diff.change_bg },
    DiffDelete = { bg = diff.delete_bg },
    DiffText = { fg = diff.change, bg = diff.text_bg },

    -- Window bar
    WinBar = { fg = ui.fg },
    WinBarNC = { fg = ui.soft },

    -- LSP
    LspInlayHint = { fg = ui.muted, bg = ui.bg_darker },
    LspReferenceText = { bg = ui.border },
    LspReferenceRead = { bg = ui.border },
    LspReferenceWrite = { bg = ui.border },
    LspSignatureActiveParameter = { fg = syn.orange },

    -- Backdrop
    Backdrop = { bg = ui.bg_darker },

    -- Message area
    MsgArea = { fg = ui.fg },
    MsgSeparator = { fg = ui.border },
  }
end

return M
