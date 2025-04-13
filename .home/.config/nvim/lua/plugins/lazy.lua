return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        variant = "auto",
      })
    end,
  },
  {
    "datsfilipe/vesper.nvim",
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vesper",
    },
  },
}
