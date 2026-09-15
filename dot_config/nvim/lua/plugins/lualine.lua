vim.pack.add({
  "https://github.com/nvim-lualine/lualine.nvim.git",
  "https://github.com/nvim-mini/mini.nvim.git",
})

require("lualine").setup({
  options = {
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
  },
  sections = {
    lualine_b = {
      { "branch", icon = "" },
      { "diff" },
      { "diagnostics" }
    },
    lualine_x = { "filetype" },
    lualine_y = { "progress" },
    lualine_z = { "" }
  }
})
