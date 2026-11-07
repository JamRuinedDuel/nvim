local color = require("jamruinedduel.utils.color")

local _, palette = color.get_palette()
local _, theme = color.get_lualine_theme()

local set_statusline_highlights = function()
  vim.api.nvim_set_hl(0, "StatusLine", { bg = palette.none })
  vim.api.nvim_set_hl(0, "StatusLineNC", { bg = palette.none })
end

set_statusline_highlights()

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = set_statusline_highlights,
})

return {
  options = {
    icons_enabled = vim.g.jamruinedduel_statusline_show_icon,
    theme = theme,
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    disabled_filetypes = { statusline = {}, winbar = {} },
    ignore_focus = {},
    always_divide_middle = true,
    always_show_tabline = false,
    globalstatus = true,
  },
  sections = {
    lualine_a = {
      {
        "mode",
        icon = false,
        fmt = function(str)
          return str:lower()
        end,
      },
    },
    lualine_b = {
      {
        "branch",
        icon = "",
      },
    },
    lualine_c = {
      {
        "filename",
        path = 4,
      },
    },
    lualine_x = {
      {
        "diagnostics",
        sources = {
          "nvim_workspace_diagnostic",
        },
      },
    },
    lualine_y = {
      {
        "filetype",
        colored = false,
        icon_only = false,
      },
      {
        "encoding",
      },
      {
        "fileformat",
      },
    },
    lualine_z = {
      {
        "location",
      },
    },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { "filename" },
    lualine_x = { "location" },
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {},
}
