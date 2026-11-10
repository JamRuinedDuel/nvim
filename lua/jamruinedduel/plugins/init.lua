local pack = require("jamruinedduel.utils.pack")
local km = require("jamruinedduel.utils.keymap")

require("jamruinedduel.plugins.icons")
require("jamruinedduel.plugins.colorscheme")
require("jamruinedduel.plugins.notification")

require("jamruinedduel.plugins.around-inside-extension")
require("jamruinedduel.plugins.surround")
require("jamruinedduel.plugins.pairs")
require("jamruinedduel.plugins.diff")
require("jamruinedduel.plugins.highlight-patterns")
require("jamruinedduel.plugins.csv-viewer")
require("jamruinedduel.plugins.lsp")
require("jamruinedduel.plugins.autocompletion")

require("jamruinedduel.plugins.files")
require("jamruinedduel.plugins.telescope")
require("jamruinedduel.plugins.statusline")
require("jamruinedduel.plugins.bufferline")
require("jamruinedduel.plugins.cursorword")
require("jamruinedduel.plugins.animation")
require("jamruinedduel.plugins.indentscope")
require("jamruinedduel.plugins.vim-tmux-navigator")
require("jamruinedduel.plugins.slideshow")
require("jamruinedduel.plugins.keymap-viewer")

--- remove unused plugins
pack.clean()

km.register("package", function()
  vim.keymap.set("n", "<leader>pc", pack.clean, { desc = "Pack: clean packages" })
  vim.keymap.set("n", "<leader>pu", pack.update_all, { desc = "Pack: update packages" })
end)
