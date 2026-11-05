local pack = require("jamruinedduel.utils.pack")
local km = require("jamruinedduel.utils.keymap")

pack.add({
  pack.gh("nvim-mini/mini.files"),
})

local files = require("mini.files")

files.setup({
  options = {
    use_as_default_explorer = true,
  },
})

-- Do not show list characters in MiniFiles
vim.api.nvim_create_autocmd("User", {
  pattern = "MiniFilesWindowOpen",
  callback = function(args)
    vim.wo[args.data.win_id].list = false
  end,
})

local toggle_mini_files = function()
  if not files.close() then
    files.open(vim.api.nvim_buf_get_name(0), false)
    files.reveal_cwd()
  end
end

km.register("files", function()
  vim.keymap.set("n", "<leader>e", toggle_mini_files, { silent = true, desc = "Toggle mini.files" })
end)
