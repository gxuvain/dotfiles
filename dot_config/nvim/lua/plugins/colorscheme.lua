vim.pack.add({ "https://github.com/catppuccin/nvim" })
vim.pack.add({ "https://github.com/0x96f-org/0x96f.nvim" })

require("catppuccin").setup({
  no_bold = true,
  no_italic = true
})

vim.cmd.colorscheme "catppuccin-macchiato"
