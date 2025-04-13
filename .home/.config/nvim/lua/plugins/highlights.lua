-- plugins/highlights.lua
return {
  {
    "LazyVim/LazyVim",
    opts = {
      highlights = function(colors)
        return {
          NormalFloat = { bg = "#121212", fg = "#d0d0d0" },
          FloatBorder = { bg = "#121212", fg = "#d0d0d0" },
          TelescopePromptNormal = { bg = "#121212", fg = "#d0d0d0" },
          TelescopePromptBorder = { bg = "#121212", fg = "#d0d0d0" },
        }
      end,
    },
  },
}
