return {
  {
    "dmtrKovalenko/fff.nvim",
    build = function()
      require("fff.download").download_or_build_binary()
    end,
    opts = {
      base_path = LazyVim.root(),
      debug = {
        enabled = true,
        show_scores = true,
      },
    },
    lazy = false,
    keys = {
      { "ff", function() require('fff').find_files() end, desc = 'FFFind files' },
      { "fg", function() require('fff').live_grep() end, desc = 'LiFFFe grep' },
      {
        "fz",
        function() require('fff').live_grep({ grep = { modes = { 'fuzzy', 'plain' } } }) end,
        desc = 'Live fffuzy grep',
      },
      {
        "fc",
        function() require('fff').live_grep({ query = vim.fn.expand("<cword>") }) end,
        desc = 'Search current word',
      },
    },
  },

  {
    "folke/snacks.nvim",
    keys = {
      { "<leader><space>", function() require('fff').find_files() end, desc = "Find Files (Root Dir)" },
      { "<leader>ff", function() require('fff').find_files() end, desc = "Find Files (Root Dir)" },
      { "<leader>fF", function() require('fff').find_files() end, desc = "Find Files (cwd)" },
      { "<leader>/", function() require('fff').live_grep({ grep = { modes = { 'fuzzy', 'plain' } } }) end, desc = "Grep (Root Dir)" },
      { "<leader>sg", function() require('fff').live_grep() end, desc = "Grep (Root Dir)" },
      { "<leader>sG", function() require('fff').live_grep() end, desc = "Grep (cwd)" },
      { "<leader>sw", function() require('fff').live_grep({ query = vim.fn.expand("<cword>") }) end, desc = "Word (Root Dir)" },
      { "<leader>sW", function() require('fff').live_grep({ query = vim.fn.expand("<cword>") }) end, desc = "Word (cwd)" },
    },
  },
}
