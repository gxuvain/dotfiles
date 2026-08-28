return {
  "folke/tokyonight.nvim",
  opts = {
    on_colors = function(colors)
      colors.bg = "#0b0c10"
      colors.bg_dark = "#08090c"
      colors.bg_float = "#0b0c10"
      colors.bg_popup = "#0b0c10"
      colors.bg_sidebar = "#090a0d"
      colors.bg_statusline = "#090a0d"
    end,
  },
  config = function(_, opts)
    require("tokyonight").setup(opts)
    vim.cmd.colorscheme("tokyonight-night")
  end,
}
