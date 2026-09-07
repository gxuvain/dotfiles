vim.pack.add({
  "https://github.com/nvim-lualine/lualine.nvim.git",
  "https://github.com/nvim-mini/mini.nvim.git",
})

require("lualine").setup({
  sections = {
    lualine_b = {
      { "branch", icon = "" },
      { "diff" },
      { "diagnostics" }
    }
  }
})
