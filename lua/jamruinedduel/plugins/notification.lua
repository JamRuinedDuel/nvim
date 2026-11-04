local pack = require("jamruinedduel.utils.pack")

pack.add({
  pack.gh("MunifTanjim/nui.nvim"),
  pack.gh("rcarriga/nvim-notify"),
  pack.gh("folke/noice.nvim"),
})

-- local notify = require("notify")
local noice = require("noice")

-- notify.setup({
--   merge_duplicates = true,
--   minimum_width = 40,
--   render = "wrapped-compact",
--   stages = "fade",
--   timeout = 5000,
-- })

noice.setup()
