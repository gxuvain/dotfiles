return {
  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-mini/mini.nvim" },
    opts = {
      columns = {
        "icon",
      },
      view_options = {
        show_hidden = true
      }
    },
    keys = {
      { "<leader>e", "<cmd>Oil<cr>" },
    },
  },
}
