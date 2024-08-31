return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  { "wittyjudge/gruvbox-material" },
  {'projekt0n/github-nvim-theme'},

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
    },
  },
}
