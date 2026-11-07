local pack = require("jamruinedduel.utils.pack")
local km = require("jamruinedduel.utils.keymap")

pack.add({
  pack.gh("willothy/nvim-cokeline"),
})

vim.opt.showtabline = 2

local setup
local cokeline = require("cokeline")

if vim.g.jamruinedduel_bufferline_style == "minimal" then
  setup = require("jamruinedduel.plugins.bufferline.minimal")
else
  setup = require("jamruinedduel.plugins.bufferline.default")
end

cokeline.setup(setup)

km.register("bufferline", function()
  vim.keymap.set("n", "H", vim.cmd.bprevious, { silent = true, desc = "Go to previous buffer" })
  vim.keymap.set("n", "L", vim.cmd.bnext, { silent = true, desc = "Go to next buffer" })
  vim.keymap.set("n", "<leader>bh", vim.cmd.bprevious, { silent = true, desc = "Go to previous buffer" })
  vim.keymap.set("n", "<leader>bl", vim.cmd.bnext, { silent = true, desc = "Go to next buffer" })
  vim.keymap.set("n", "<leader>bd", vim.cmd.bdelete, { silent = true, desc = "Close current buffer" })
end)
