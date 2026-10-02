vim.pack.add({ "https://github.com/catppuccin/nvim" })
vim.pack.add({ "https://github.com/tjdevries/colorbuddy.nvim" })
vim.pack.add({ "https://github.com/rockerBOO/boo-colorscheme-nvim" })

require("catppuccin").setup()
require("boo-colorscheme").setup()

vim.cmd.colorscheme("gruvbuddy")
