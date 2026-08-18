return {
  "nvim-mini/mini.nvim",
  config = function()
    require("mini.icons").setup()
    require("mini.surround").setup()
  end
}
