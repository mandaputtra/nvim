-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- Language
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.vue" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.lean" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.biome" },
  { import = "astrocommunity.markdown-and-latex.render-markdown-nvim" },
  --
  -- AI Companion setup
  { import = "astrocommunity.recipes.ai" },
  -- Smooth Scrolling
  { import = "astrocommunity.scrolling.neoscroll-nvim" },
  -- VSCode integrations
  { import = "astrocommunity.recipes.vscode" },
  -- Themes
  { import = "astrocommunity.colorscheme.aurora" },
  { import = "astrocommunity.colorscheme.bamboo-nvim" },
  -- Break bad habbits and workflows
  { import = "astrocommunity.workflow.hardtime-nvim" },
  -- Windows
  -- {
  --   import = "astrocommunity.split-and-window.neominimap-nvim",
  --   init = function()
  --     -- The following options are recommended when layout == "float"
  --     vim.opt.wrap = false
  --     vim.opt.sidescrolloff = 36 -- Set a large value
  --
  --     --- Put your configuration here
  --     ---@type Neominimap.UserConfig
  --     vim.g.neominimap = {
  --       auto_enable = false,
  --     }
  --   end,
  -- },
}
