local pack = require("jamruinedduel.utils.pack")
local km = require("jamruinedduel.keymaps.registry")

pack.add({
  { src = pack.gh("obsidian-nvim/obsidian.nvim"), version = vim.version.range("*") },
})

local obsidian = require("obsidian")

obsidian.setup({
  legacy_commands = false,
  workspaces = {
    {
      name = "personal",
      path = "~/Documents/Vaults/Personal",
    },
    {
      name = "work",
      path = "~/Documents/Vaults/Work",
    },
  },
})

km.register("obsidian", function()
  vim.keymap.set("n", "<leader>o", vim.cmd.Obsidian, {
    desc = "Open obsidian.nvim",
  })
end)
