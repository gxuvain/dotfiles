return {
  "mason-org/mason.nvim",
  dependencies = {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    local tools = {
      "lua-language-server",
      "typescript-language-server",
      "json-lsp",
      "tailwindcss-language-server",
      "vue-language-server",
      "basedpyright",
      "eslint-lsp"
    }

    if vim.fn.has("mac") == 1 then
      vim.list_extend(tools, { "ocaml-lsp", "ocamlformat" })
    end

    require("mason").setup()
    require("mason-tool-installer").setup({
      ensure_installed = tools,
      auto_update = false,
    })
  end,
}
