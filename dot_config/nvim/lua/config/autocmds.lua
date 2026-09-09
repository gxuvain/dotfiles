vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.hl.hl_op()
  end
})

vim.api.nvim_create_autocmd("BufWritePre", {
  callback = function()
    vim.lsp.buf.format({ async = false, timeout_ms = 500 })
  end,
})
