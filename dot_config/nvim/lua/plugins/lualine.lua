return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-mini/mini.nvim" },
  opts = {
    sections = {
      lualine_b = {
        { "branch", icon = "" },
        { "diff" },
        { "diagnostics" }
      }
    }
  }
}
