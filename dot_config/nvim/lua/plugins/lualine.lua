return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				component_separators = { left = "", right = "" },
				section_separators = { left = "█", right = "█" },
			},
			sections = {
				lualine_b = {
					{
						"branch"
					},
					{
						"diff"
					},
					{
						"diagnostics",
						symbols = {
							error = " ",
							warn = " ",
							hint = "󰠠 ",
							info = " ",
						}
					}
				},
				lualine_x = { "filetype" }
			},
		})
	end
}
