local color = require("jamruinedduel.utils.color")

local _, palette = color.get_palette()

return {
  show_if_buffers_are_at_least = 1,
  buffers = {
    focus_on_delete = "prev",
    new_buffers_position = "number",
    delete_on_right_click = false,
  },
  mappings = {
    disable_mouse = true,
  },
  default_hl = {
    fg = function(buf)
      return buf.is_focused and palette.gray or palette.white
    end,
    bg = function(buf)
      return buf.is_focused and palette.white or palette.none
    end,
  },
  components = {
    {
      text = function(buf)
        return (not buf.is_first) and (buf.is_focused and "" or " ") or ""
      end,
      fg = function(buf)
        return buf.is_focused and palette.white or palette.none
      end,
      bg = palette.none,
    },
    {
      text = function(buf)
        return string.format(" %s%s%s ", buf.devicon.icon, buf.unique_prefix, buf.filename)
      end,
    },
    {
      text = function(buf)
        local text = ""
        if buf.is_readonly then
          text = "[-] "
        elseif buf.is_modified then
          text = "[+] "
        end
        return text
      end,
    },
    {
      text = function(buf)
        local count = buf.diagnostics
        if buf.is_focused then
          return ""
        else
          return 0 < (count.errors + count.warnings + count.infos + count.hints) and "" or " "
        end
      end,
      fg = function(buf)
        return buf.is_focused and palette.white or palette.gray
      end,
      bg = palette.none,
    },
    {
      text = function(buf)
        local count = buf.diagnostics
        return 0 < (count.errors + count.warnings + count.infos + count.hints) and " " or ""
      end,
      fg = palette.none,
      bg = palette.none,
    },
    {
      text = function(buf)
        local count = buf.diagnostics.errors
        return 0 < count and "󰅚 " .. count .. " " or ""
      end,
      fg = palette.red,
      bg = palette.none,
    },
    {
      text = function(buf)
        local count = buf.diagnostics.warnings
        return 0 < count and "󰀪 " .. count .. " " or ""
      end,
      fg = palette.yellow,
      bg = palette.none,
    },
    {
      text = function(buf)
        local count = buf.diagnostics.infos
        return 0 < count and "󰋽 " .. count .. " " or ""
      end,
      fg = palette.blue,
      bg = palette.none,
    },
    {
      text = function(buf)
        local count = buf.diagnostics.hints
        return 0 < count and "󰌶 " .. count .. " " or ""
      end,
      fg = palette.magenta,
      bg = palette.none,
    },
    {
      text = function(buf)
        return buf.is_last and "" or ""
      end,
      fg = palette.white,
      bg = palette.none,
    },
  },
}
