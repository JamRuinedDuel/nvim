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
      return buf.is_focused and palette.green or palette.white
    end,
    bg = palette.none,
  },
  components = {
    {
      text = function(buf)
        return buf.is_focused and " ● " or " ○ "
      end,
    },
    { --- filetype icon
      text = function(buf)
        return vim.g.jamruinedduel_bufferline_show_icon and buf.devicon.icon or ""
      end,
    },
    { --- file unique prefix
      text = function(buf)
        return buf.unique_prefix
      end,
      bold = function(buf)
        return buf.is_focused
      end,
    },
    { --- filename
      text = function(buf)
        return buf.filename
      end,
      bold = function(buf)
        return buf.is_focused
      end,
    },
    { --- file modified flag "*"
      text = function(buf)
        return buf.is_modified and "*" or ""
      end,
    },
    { --- file read-only flag "-"
      text = function(buf)
        return buf.is_readonly and "-" or ""
      end,
    },
    { --- file has diagnostic item flag "!"
      text = function(buf)
        local d = buf.diagnostics
        return 0 ~= (d.errors + d.warnings + d.infos + d.hints) and "!" or ""
      end,
    },
    { text = " " },
  },
}
