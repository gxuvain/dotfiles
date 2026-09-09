vim.pack.add({ "https://github.com/chrisgrieser/nvim-chainsaw" })

local chainsaw = require("chainsaw")
chainsaw.setup()
vim.keymap.set("n", "<leader>lg", chainsaw.variableLog)
