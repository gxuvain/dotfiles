vim.pack.add({
  "https://github.com/stevearc/oil.nvim.git",
  "https://github.com/nvim-mini/mini.nvim.git",
})

require("oil").setup({
  columns = {
    "icon",
  },
  view_options = {
    show_hidden = true
  }
})

vim.keymap.set("n", "<leader>e", "<cmd>Oil<cr>")
