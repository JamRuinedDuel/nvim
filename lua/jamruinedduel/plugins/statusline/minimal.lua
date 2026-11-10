local color = require("jamruinedduel.utils.color")

local _, palette = color.get_palette()

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
    theme = {
      normal = {
        a = { bg = palette.none, fg = palette.green, gui = "bold" },
        b = { bg = palette.none, fg = palette.white },
        c = { bg = palette.none, fg = palette.bright_gray },
      },
      insert = {
        a = { bg = palette.none, fg = palette.cyan, gui = "bold" },
        b = { bg = palette.none, fg = palette.white },
        c = { bg = palette.none, fg = palette.bright_gray },
      },
      visual = {
        a = { bg = palette.none, fg = palette.magenta, gui = "bold" },
        b = { bg = palette.none, fg = palette.white },
        c = { bg = palette.none, fg = palette.bright_gray },
      },
      replace = {
        a = { bg = palette.none, fg = palette.red, gui = "bold" },
        b = { bg = palette.none, fg = palette.white },
        c = { bg = palette.none, fg = palette.bright_gray },
      },
      command = {
        a = { bg = palette.none, fg = palette.blue, gui = "bold" },
        b = { bg = palette.none, fg = palette.white },
        c = { bg = palette.none, fg = palette.bright_gray },
      },
      inactive = {
        a = { bg = palette.none, fg = palette.gray, gui = "bold" },
        b = { bg = palette.none, fg = palette.gray },
        c = { bg = palette.none, fg = palette.gray },
      },
    },
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
        icon = "●",
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
      {
        "diagnostics",
        sources = {
          "nvim_workspace_diagnostic",
        },
      },
    },
    lualine_x = {
      {
        "searchcount",
      },
      {
        "location",
      },
    },
    lualine_y = {

      {
        "filetype",
        colored = false,
        icon_only = false,
      },
      { "encoding" },
      {
        "fileformat",
        symbols = {
          unix = "unix",
          dos = "dos",
          mac = "mac",
        },
      },
    },
    lualine_z = {},
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
