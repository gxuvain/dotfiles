return {
	"mason-org/mason.nvim",
	dependencies = {
		{
			"mason-org/mason-lspconfig.nvim"
		}
	},
	config = function()
		local servers = {
			"lua_ls",
			"ts_ls",
			"oxlint",
			"jsonls",
			"tailwindcss",
			"vue_ls",
			"denols",
			"ruff"
		}

		if vim.fn.has("mac") == 1 then
			table.insert(servers, "ocamllsp")
		end

		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = servers
		})
	end
}
