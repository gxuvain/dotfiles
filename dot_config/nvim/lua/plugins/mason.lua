return {
  "mason-org/mason.nvim",
  opts = {},
  dependencies = {
    {
      "WhoIsSethDaniel/mason-tool-installer.nvim",
      opts = {
        ensure_installed = {
          "lua-language-server",
          "typescript-language-server",
          "json-lsp",
          "tailwindcss-language-server",
          "vue-language-server",
          "eslint-lsp",
          "ruff",
          "pyright",
          "ocaml-lsp",
          "ocamlformat",
        },
        auto_update = false,
      },
    },
  },
}
