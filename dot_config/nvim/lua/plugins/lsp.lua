return {
	{
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
				"oxlint",
				"jsonls",
				"ocamllsp",
				"tailwindcss",
				"vue_ls"
			})
			local vue_language_server_path = vim.fn.expand(
				"$MASON/packages/vue-language-server/node_modules/@vue/language-server")

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
		end
	}
}
