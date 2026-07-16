vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.hl.on_yank()
  end
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.ts", "*.tsx", "*.js", "*.jsx", "*.vue" },
  callback = function()
    vim.lsp.buf.code_action({
      context = { only = { "source.fixAll.eslint" }, diagnostics = {} },
      apply = true,
    })
  end,
})
