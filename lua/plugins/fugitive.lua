return {
  {
    "tpope/vim-fugitive",
    cmd = { "G", "Git", "Gdiffsplit", "Gread", "Gwrite", "Gblame", "Gedit" },
    keys = {
      { "<leader>gg", "<cmd>Git<cr>", desc = "Git Status (Fugitive)" },
      { "<leader>gG", "<cmd>G<cr>", desc = "Git Status (cwd)" },
      { "<leader>gd", "<cmd>Gdiffsplit<cr>", desc = "Git Diff" },
      { "<leader>gb", "<cmd>Gblame<cr>", desc = "Git Blame" },
      { "<leader>gl", "<cmd>Git log<cr>", desc = "Git Log" },
      { "<leader>gL", "<cmd>Git log --<cr>", desc = "Git Log (cwd)" },
    },
  },
}
