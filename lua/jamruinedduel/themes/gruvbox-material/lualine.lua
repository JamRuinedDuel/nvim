---@type ColorPalette
local palette = require("jamruinedduel.themes.gruvbox-material.palette")

---@type LualineTheme
local theme = {
  normal = {
    a = { bg = palette.white, fg = palette.bright_black },
    b = { bg = palette.gray, fg = palette.white },
    c = { bg = palette.none, fg = palette.white },
  },
  insert = {
    a = { bg = palette.green, fg = palette.bright_black },
    b = { bg = palette.gray, fg = palette.green },
    c = { bg = palette.none, fg = palette.white },
  },
  visual = {
    a = { bg = palette.magenta, fg = palette.bright_black },
    b = { bg = palette.gray, fg = palette.magenta },
    c = { bg = palette.none, fg = palette.white },
  },
  replace = {
    a = { bg = palette.red, fg = palette.bright_black },
    b = { bg = palette.gray, fg = palette.red },
    c = { bg = palette.none, fg = palette.white },
  },
  command = {
    a = { bg = palette.blue, fg = palette.bright_black },
    b = { bg = palette.gray, fg = palette.blue },
    c = { bg = palette.none, fg = palette.white },
  },
  inactive = {
    a = { bg = palette.none, fg = palette.gray },
    b = { bg = palette.none, fg = palette.gray },
    c = { bg = palette.none, fg = palette.gray },
  },
}

return theme
