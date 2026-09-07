vim.pack.add({
  "https://github.com/mason-org/mason.nvim.git",
  "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim.git",
})

require("mason").setup()
require("mason-tool-installer").setup({
  ensure_installed = {
    "lua-language-server",
    "typescript-language-server",
    "json-lsp",
    "tailwindcss-language-server",
    "vue-language-server",
    "oxlint",
    "eslint-lsp",
    "ruff",
    "pyright",
    "ocaml-lsp",
  },
  auto_update = false,
})
