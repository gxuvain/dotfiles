return {
  "akinsho/bufferline.nvim",
  version = "*",
  opts = {
    options = {
      diagnostics = "nvim_lsp",
      diagnostics_indicator = function(count, level)
        local icon = level:match("error") and " " or " "
        return " " .. icon .. count
      end
    }
  }
}
