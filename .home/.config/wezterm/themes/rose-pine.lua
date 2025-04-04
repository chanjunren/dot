local M = {}

function M.decorate(config) 
  config.colors = {
    -- background = '#3b224c',
    -- background = "#181616", -- vague.nvim bg
    -- background = "#080808", -- almost black
    background = "#0c0b0f", -- dark purple
    -- background = "#020202", -- dark purple
    -- background = "#17151c", -- brighter purple
    -- background = "#16141a",
    -- background = "#0e0e12", -- bright washed lavendar
    -- background = 'rgba(59, 34, 76, 100%)',
    cursor_border = "#bea3c7",
    -- cursor_fg = "#281733",
    cursor_bg = "#bea3c7",
    -- selection_fg = '#281733',

    tab_bar = {
      background = "#0c0b0f",
      -- background = "rgba(0, 0, 0, 0%)",
      active_tab = {
        bg_color = "#0c0b0f",
        fg_color = "#bea3c7",
        intensity = "Normal",
        underline = "None",
        italic = false,
        strikethrough = false,
      },
      inactive_tab = {
        bg_color = "#0c0b0f",
        fg_color = "#f8f2f5",
        intensity = "Normal",
        underline = "None",
        italic = false,
        strikethrough = false,
      },

      new_tab = {
        -- bg_color = "rgba(59, 34, 76, 50%)",
        bg_color = "#0c0b0f",
        fg_color = "white",
      },
    },
  }
end

return M
