local M = {}

M.config = {
  on_colors = nil,
  on_highlights = nil,
  transparent = false,
  transparent_floats = nil,
}

function M.setup(opts)
  M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

function M.load()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.o.termguicolors = true
  vim.o.background = "dark"
  vim.g.colors_name = "vesper"

  local palette = require("vesper.palette").get()

  if M.config.on_colors then
    M.config.on_colors(palette)
  end

  local theme = require("vesper.theme").setup(palette, M.config)

  local highlights = require("vesper.highlights").get(theme)

  if M.config.on_highlights then
    M.config.on_highlights(highlights, theme)
  end

  for group, hl in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, hl)
  end

  if theme.term then
    for i = 0, 15 do
      vim.g["terminal_color_" .. i] = theme.term[i]
    end
  end
end

return M
