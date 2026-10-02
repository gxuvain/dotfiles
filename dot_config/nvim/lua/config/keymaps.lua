vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Go Back To Normal Mode" })
