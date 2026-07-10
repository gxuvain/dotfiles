return {
	"rachartier/tiny-code-action.nvim",
	dependencies = {
		{
			"folke/snacks.nvim",
			opts = {
				terminal = {},
			}
		}
	},
	opts = {},
	keys = {
		{ "<leader>ca", function() require("tiny-code-action").code_action({}) end, mode = { "n", "x" } },
	},
}
