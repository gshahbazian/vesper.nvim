local M = {}

function M.get(theme)
  local highlights = {}

  local modules = {
    "vesper.highlights.editor",
    "vesper.highlights.syntax",
    "vesper.highlights.treesitter",
    "vesper.highlights.lsp",
    "vesper.highlights.diagnostic",
  }

  local plugins = {
    "vesper.highlights.plugins.blink-cmp",
    "vesper.highlights.plugins.flash",
    "vesper.highlights.plugins.gitsigns",
    "vesper.highlights.plugins.snacks",
  }

  for _, mod_name in ipairs(modules) do
    local mod = require(mod_name)
    local hl = mod.get(theme)
    highlights = vim.tbl_deep_extend("force", highlights, hl)
  end

  for _, mod_name in ipairs(plugins) do
    local ok, mod = pcall(require, mod_name)
    if ok and mod.get then
      local hl = mod.get(theme)
      highlights = vim.tbl_deep_extend("force", highlights, hl)
    end
  end

  return highlights
end

return M
