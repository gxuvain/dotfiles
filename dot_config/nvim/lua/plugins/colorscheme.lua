vim.pack.add({ "https://github.com/catppuccin/nvim" })
vim.pack.add({ "https://github.com/tjdevries/colorbuddy.nvim" })
vim.pack.add({ "https://github.com/vague-theme/vague.nvim" })
vim.pack.add({ "https://github.com/rose-pine/neovim" })
vim.pack.add({ "https://github.com/0x96f-org/0x96f.nvim" })

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
require("0x96f").setup()

vim.cmd.colorscheme "0x96f"
