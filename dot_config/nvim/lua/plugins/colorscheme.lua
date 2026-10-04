vim.pack.add({ "https://github.com/catppuccin/nvim" })
vim.pack.add({ "https://github.com/tjdevries/colorbuddy.nvim" })
vim.pack.add({ "https://github.com/vague-theme/vague.nvim" })
vim.pack.add({ "https://github.com/rose-pine/neovim" })

require("catppuccin").setup()
require("vague").setup({
  colors = {
    bold = false,
    italic = false,
    func = "#bc96b0"
  },
})
require("rose-pine").setup({
  styles = {
    bold = false,
    italic = false,
    transparency = true
  },
})

vim.cmd.colorscheme "rose-pine"
