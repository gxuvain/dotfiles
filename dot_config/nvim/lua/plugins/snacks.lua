vim.pack.add({
  "https://github.com/folke/snacks.nvim.git",
  "https://github.com/nvim-mini/mini.nvim.git",
})

require("snacks").setup({
  input = { enabled = true },
  picker = { enabled = true },
  git = { enabled = true },
  scope = { enabled = true },
  indent = {
    enabled = true,
    indent = { enabled = false },
    scope = { enabled = true },
    chunk = {
      enabled = true,
      char = {
        corner_top = "╭",
        corner_bottom = "╰"
      }
    },
  },
  styles = {
    snacks_image = {
      relative = "editor",
      col = -1
    },
  },
  image = {
    enabled = true,
    doc = {
      inline = false,
      float = true
    },
  },
})

-- Find
vim.keymap.set("n", "<leader><space>", function() Snacks.picker.smart() end, { desc = "Smart Find Files" })
vim.keymap.set("n", "<leader>fb", function() Snacks.picker.buffers() end, { desc = "Buffers" })
vim.keymap.set("n", "<leader>fc", function() Snacks.picker.colorschemes() end, { desc = "Colorschemes" })
vim.keymap.set("n", "<leader>ff", function() Snacks.picker.files() end, { desc = "Find Files" })
vim.keymap.set("n", "<leader>fg", function() Snacks.picker.grep() end, { desc = "Grep" })
vim.keymap.set("n", "<leader>fp", function() Snacks.picker.projects() end, { desc = "Projects" })
vim.keymap.set("n", "<leader>fd", function() Snacks.picker.diagnostics() end, { desc = "Diagnostics" })

-- Git
vim.keymap.set("n", "<leader>gd", function() Snacks.picker.git_diff() end, { desc = "Git Diff (Hunks)" })
vim.keymap.set("n", "<leader>gg", function() Snacks.lazygit() end, { desc = "Lazygit" })

-- LSP
vim.keymap.set("n", "gd", function() Snacks.picker.lsp_definitions() end, { desc = "Goto Definition" })
vim.keymap.set("n", "gr", function() Snacks.picker.lsp_references() end, { nowait = true, desc = "References" })
vim.keymap.set("n", "gi", function() Snacks.picker.lsp_implementations() end, { desc = "Goto Implementation" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })

-- Buffer
vim.keymap.set("n", "<leader>bd", function() Snacks.bufdelete() end, { desc = "Delete Buffer" })
vim.keymap.set("n", "<leader>bdo", function() Snacks.bufdelete.other() end, { desc = "Delete All Other Buffers" })
vim.keymap.set("n", "<leader>bda", function() Snacks.bufdelete.all() end, { desc = "Delete All Buffers" })
