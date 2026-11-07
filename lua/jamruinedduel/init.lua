if vim.loader then
  vim.loader.enable()
end

---@type "default"|"minimal"
vim.g.jamruinedduel_bufferline_style = "minimal"
---@type boolean
vim.g.jamruinedduel_bufferline_show_icon = false
---@type "default"|"minimal"
vim.g.jamruinedduel_statusline_style = "minimal"
---@type boolean
vim.g.jamruinedduel_statusline_show_icon = false

require("jamruinedduel.types")
require("jamruinedduel.options")
require("jamruinedduel.plugins")

-- NOTE Keep this at the bottom so keymaps will be loaded last.
require("jamruinedduel.keymaps")
