local M = {}

M.get = function(theme)
  local ui = theme.ui
  local syn = theme.syn
  local diag = theme.diag
  local diff = theme.diff

  return {
    -- Variables & Identifiers
    ["@variable"] = { fg = syn.variable },
    ["@variable.builtin"] = { fg = syn.variable_builtin },
    ["@variable.parameter"] = { fg = syn.variable },
    ["@variable.member"] = { fg = syn.property },

    -- Constants
    ["@constant"] = { fg = syn.constant },
    ["@constant.builtin"] = { fg = syn.constant },
    ["@constant.macro"] = { fg = syn.constant },

    -- Modules
    ["@module"] = { fg = syn.variable },
    ["@module.builtin"] = { fg = syn.variable_builtin },

    -- Labels
    ["@label"] = { fg = syn.orange },

    -- Strings
    ["@string"] = { fg = syn.string },
    ["@string.documentation"] = { fg = syn.comment },
    ["@string.escape"] = { fg = syn.orange },
    ["@string.regexp"] = { fg = syn.string },
    ["@string.special"] = { fg = syn.string },
    ["@string.special.url"] = { fg = syn.string, underline = true },
    ["@string.special.symbol"] = { fg = syn.orange },

    -- Numbers & Booleans
    ["@number"] = { fg = syn.number },
    ["@number.float"] = { fg = syn.number },
    ["@boolean"] = { fg = syn.constant },
    ["@character"] = { fg = syn.string },
    ["@character.special"] = { fg = syn.orange },

    -- Types
    ["@type"] = { fg = syn.type },
    ["@type.builtin"] = { fg = syn.type },
    ["@type.definition"] = { fg = syn.type },
    ["@type.qualifier"] = { fg = syn.keyword },

    -- Attributes & Properties
    ["@attribute"] = { fg = syn.keyword },
    ["@attribute.builtin"] = { fg = syn.keyword },
    ["@property"] = { fg = syn.property },

    -- Functions
    ["@function"] = { fg = syn.func },
    ["@function.builtin"] = { fg = syn.func },
    ["@function.call"] = { fg = syn.func },
    ["@function.macro"] = { fg = syn.func },
    ["@function.method"] = { fg = syn.method },
    ["@function.method.call"] = { fg = syn.method },

    -- Constructor
    ["@constructor"] = { fg = syn.type },

    -- Operators & Punctuation
    ["@operator"] = { fg = syn.operator },
    ["@punctuation"] = { fg = syn.operator },
    ["@punctuation.bracket"] = { fg = syn.operator },
    ["@punctuation.delimiter"] = { fg = syn.operator },
    ["@punctuation.special"] = { fg = syn.operator },

    -- Keywords
    ["@keyword"] = { fg = syn.keyword },
    ["@keyword.coroutine"] = { fg = syn.keyword },
    ["@keyword.function"] = { fg = syn.keyword },
    ["@keyword.operator"] = { fg = syn.keyword },
    ["@keyword.import"] = { fg = syn.keyword },
    ["@keyword.type"] = { fg = syn.keyword },
    ["@keyword.modifier"] = { fg = syn.keyword },
    ["@keyword.repeat"] = { fg = syn.keyword },
    ["@keyword.return"] = { fg = syn.keyword },
    ["@keyword.debug"] = { fg = diag.error },
    ["@keyword.exception"] = { fg = syn.keyword },
    ["@keyword.conditional"] = { fg = syn.keyword },
    ["@keyword.conditional.ternary"] = { fg = syn.keyword },
    ["@keyword.directive"] = { fg = syn.preproc },
    ["@keyword.directive.define"] = { fg = syn.preproc },

    -- Comments
    ["@comment"] = { fg = syn.comment },
    ["@comment.documentation"] = { fg = syn.comment },
    ["@comment.error"] = { fg = diag.error },
    ["@comment.warning"] = { fg = diag.warn },
    ["@comment.todo"] = { fg = syn.orange },
    ["@comment.note"] = { fg = diag.info },

    -- Markup
    ["@markup.strong"] = { bold = true },
    ["@markup.italic"] = { italic = true },
    ["@markup.strikethrough"] = { strikethrough = true },
    ["@markup.underline"] = { underline = true },
    ["@markup.heading"] = { fg = syn.orange },
    ["@markup.heading.1"] = { fg = syn.orange },
    ["@markup.heading.2"] = { fg = syn.orange },
    ["@markup.heading.3"] = { fg = syn.orange },
    ["@markup.heading.4"] = { fg = syn.orange },
    ["@markup.heading.5"] = { fg = syn.orange },
    ["@markup.heading.6"] = { fg = ui.soft },
    ["@markup.quote"] = { fg = ui.soft, italic = true },
    ["@markup.math"] = { fg = syn.orange },
    ["@markup.link"] = { fg = syn.orange, underline = true },
    ["@markup.link.label"] = { fg = syn.orange },
    ["@markup.link.url"] = { fg = syn.string, underline = true },
    ["@markup.raw"] = { fg = syn.string },
    ["@markup.raw.block"] = { fg = ui.fg },
    ["@markup.list"] = { fg = syn.operator },
    ["@markup.list.checked"] = { fg = syn.aqua },
    ["@markup.list.unchecked"] = { fg = ui.subtle },

    -- Tags (HTML/XML)
    ["@tag"] = { fg = syn.orange },
    ["@tag.builtin"] = { fg = syn.orange },
    ["@tag.attribute"] = { fg = syn.keyword },
    ["@tag.delimiter"] = { fg = syn.operator },

    -- Diff
    ["@diff.plus"] = { fg = diff.add },
    ["@diff.minus"] = { fg = diff.delete },
    ["@diff.delta"] = { fg = diff.change },
  }
end

return M
