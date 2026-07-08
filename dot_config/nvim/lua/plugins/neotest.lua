---@diagnostic disable: missing-fields, assign-type-mismatch
return {
	"nvim-neotest/neotest",
	dependencies = {
		"nvim-neotest/nvim-nio",
		"antoinemadec/FixCursorHold.nvim",
		"nvim-treesitter/nvim-treesitter",
		"marilari88/neotest-vitest",
		"MarkEmmons/neotest-deno"
	},
	keys = {
		{ "<leader>tr", "<cmd>Neotest run<cr>" },
		{ "<leader>to", "<cmd>Neotest output<cr>" },
		{ "<leader>ts", "<cmd>Neotest summary<cr>" },
	},
	config = function()
		require("neotest").setup({
			adapters = {
				require("neotest-vitest"),
				require("neotest-deno"),
			},
		})
	end,
}
