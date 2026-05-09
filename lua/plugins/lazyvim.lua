return {
  -- Themes instalations
  { "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = ... },
  --- Lazyvm config
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
