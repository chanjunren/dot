
-- wezterm/themes/vesper.lua
local M = {}

function M.decorate(config)
  config.colors = {
    background = "#0c0b0f",
    cursor_border = "#ffffff", -- mint for accent
    cursor_bg = "#ffffff",

    tab_bar = {
      background = "#0c0b0f",
      active_tab = {
        bg_color = "#0c0b0f",
        fg_color = "#efbb91", -- orange
        intensity = "Bold",
        underline = "None",
        italic = false,
        strikethrough = false,
      },
      inactive_tab = {
        bg_color = "#0c0b0f",
        fg_color = "#a0a0a0", -- gray
        intensity = "Normal",
        underline = "None",
        italic = false,
        strikethrough = false,
      },
      new_tab = {
        bg_color = "#0c0b0f",
        fg_color = "#ffffff", -- white
      },
    },
  }

  config.color_scheme = "Builtin Dark" -- optionally fallback or remove if handled entirely by `colors`
end

return M
