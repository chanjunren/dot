return {
  -- add gruvbox
  { "rose-pine/neovim", name = "rose-pine" , config = function()
      require("rose-pine").setup({
        variant = "moon", 
      })
    end,},

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
  },
}
