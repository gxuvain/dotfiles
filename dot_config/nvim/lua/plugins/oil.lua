return {
	{
		"stevearc/oil.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			columns = {
				"icon",
			},
			view_options = {
				show_hidden = true
			}
		},
		keys = {
			{ "<leader>e", "<cmd>Oil<cr>" },
		},
	},
	{
		"benomahony/oil-git.nvim",
		dependencies = { "stevearc/oil.nvim" },
	},
	{
		"JezerM/oil-lsp-diagnostics.nvim",
		dependencies = { "stevearc/oil.nvim" },
		opts = {}
	}
}
