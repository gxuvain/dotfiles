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
				"tailwindcss",
				"vue_ls",
				"denols"
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

			vim.lsp.config("denols", {
				root_markers = { "deno.json", "deno.jsonc" },
			})

			vim.lsp.config("ts_ls", {
				root_markers = { "package.json" },
				single_file_support = false,
			})

			vim.diagnostic.config({
				signs = {
					text = {
						[vim.diagnostic.severity.ERROR] = " ",
						[vim.diagnostic.severity.WARN] = " ",
						[vim.diagnostic.severity.HINT] = "󰠠 ",
						[vim.diagnostic.severity.INFO] = " ",
					}
				}
			})
		end
	}
}
