local pack = require("jamruinedduel.utils.pack")

pack.add({
  pack.gh("nvim-lualine/lualine.nvim"),
})

local setup
local lualine = require("lualine")

if vim.g.jamruinedduel_statusline_style == "minimal" then
  setup = require("jamruinedduel.plugins.statusline.minimal")
else
  setup = require("jamruinedduel.plugins.statusline.default")
end

lualine.setup(setup)
