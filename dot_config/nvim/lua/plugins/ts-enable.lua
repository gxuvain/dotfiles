vim.pack.add({ "https://github.com/VonHeikemen/ts-enable.nvim.git" })

require("ts-enable").setup({
  auto_init = true,
  auto_install = true,
  highlights = true,
})
