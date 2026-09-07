vim.pack.add({
  { src = "https://github.com/saghen/blink.cmp.git", version = vim.version.range("1") },
  "https://github.com/rafamadriz/friendly-snippets.git",
})

require("blink.cmp").setup({
  keymap = {
    preset = "enter",
  },
  completion = { documentation = { auto_show = true } },
})
