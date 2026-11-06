if vim.loader then
  vim.loader.enable()
end

require("jamruinedduel.types")
require("jamruinedduel.options")
require("jamruinedduel.plugins")

-- NOTE Keep this at the bottom so keymaps will be loaded last.
require("jamruinedduel.keymaps")
