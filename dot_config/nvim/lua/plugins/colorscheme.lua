vim.pack.add({ "https://github.com/catppuccin/nvim" })
vim.pack.add({ "https://github.com/miikanissi/modus-themes.nvim" })

require("catppuccin").setup()

vim.cmd.colorscheme("catppuccin-mocha")
