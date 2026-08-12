return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "saghen/blink.cmp",
    {
      "folke/lazydev.nvim",
      opts = {
        library = {
          { path = "${3rd}/luv/library", words = { "vim%uv" } },
        },
      },
    },
  },
  config = function()
    vim.lsp.enable({
      "lua_ls",
      "ts_ls",
      "jsonls",
      "tailwindcss",
      "vue_ls",
      "basedpyright",
      "eslint"
    })
    vim.lsp.enable("ocamllsp", vim.fn.has("mac") == 1)

    local vue_language_server_path = vim.fn.stdpath("data") ..
        "/mason/packages/vue-language-server/node_modules/@vue/language-server"

    local vue_plugin = {
      name = "@vue/typescript-plugin",
      location = vue_language_server_path,
      languages = { "vue" },
      configNamespace = "typescript",
    }

    vim.lsp.config("ts_ls", {
      init_options = {
        plugins = { vue_plugin },
      },
      filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
    })

    vim.lsp.config("ts_ls", {
      root_markers = { "package.json" },
      single_file_support = false,
    })

    local customizations = {
      { rule = "style/*",   severity = "off", fixable = true },
      { rule = "format/*",  severity = "off", fixable = true },
      { rule = "*-indent",  severity = "off", fixable = true },
      { rule = "*-spacing", severity = "off", fixable = true },
      { rule = "*-spaces",  severity = "off", fixable = true },
      { rule = "*-order",   severity = "off", fixable = true },
      { rule = "*-dangle",  severity = "off", fixable = true },
      { rule = "*-newline", severity = "off", fixable = true },
      { rule = "*quotes",   severity = "off", fixable = true },
      { rule = "*semi",     severity = "off", fixable = true },
    }

    vim.lsp.config("eslint", {
      filetypes = {
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
        "vue",
        "html",
        "markdown",
        "json",
        "jsonc",
        "yaml",
        "toml",
        "xml",
        "gql",
        "graphql",
        "astro",
        "svelte",
        "css",
        "less",
        "scss",
        "pcss",
        "postcss"
      },
      settings = {
        rulesCustomizations = customizations,
      },
    })

    vim.diagnostic.config({
      virtual_text = true
    })
  end
}
