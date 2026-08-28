return {
  "folke/snacks.nvim",
  opts = {
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
  },
  keys = {
    -- Find
    { "<leader><space>", function() Snacks.picker.smart() end,                desc = "Smart Find Files" },
    { "<leader>fb",      function() Snacks.picker.buffers() end,              desc = "Buffers" },
    { "<leader>fc",      function() Snacks.picker.colorschemes() end,         desc = "Colorschemes" },
    { "<leader>ff",      function() Snacks.picker.files() end,                desc = "Find Files" },
    { "<leader>fg",      function() Snacks.picker.grep() end,                 desc = "Grep" },
    { "<leader>fp",      function() Snacks.picker.projects() end,             desc = "Projects" },
    { "<leader>fd",      function() Snacks.picker.diagnostics() end,          desc = "Diagnostics" },
    -- Git
    { "<leader>gb",      function() Snacks.picker.git_branches() end,         desc = "Git Branches" },
    { "<leader>gl",      function() Snacks.picker.git_log() end,              desc = "Git Log" },
    { "<leader>gs",      function() Snacks.picker.git_status() end,           desc = "Git Status" },
    { "<leader>gd",      function() Snacks.picker.git_diff() end,             desc = "Git Diff (Hunks)" },
    { "<leader>gu",      function() Snacks.git.blame_line() end,              desc = "Git Diff (Hunks)" },
    { "<leader>gg",      function() Snacks.lazygit() end,                     desc = "Lazygit" },
    -- LSP
    { "gd",              function() Snacks.picker.lsp_definitions() end,      desc = "Goto Definition" },
    { "gD",              function() Snacks.picker.lsp_declarations() end,     desc = "Goto Declaration" },
    { "gr",              function() Snacks.picker.lsp_references() end,       nowait = true,                    desc = "References" },
    { "gi",              function() Snacks.picker.lsp_implementations() end,  desc = "Goto Implementation" },
    { "gy",              function() Snacks.picker.lsp_type_definitions() end, desc = "Goto T[y]pe Definition" },
    { "<leader>rn",      vim.lsp.buf.rename,                                  desc = "Rename" },
    { "<leader>ca",      vim.lsp.buf.code_action,                             desc = "Code Action" },
    -- Buffer
    { "<leader>bd",      function() Snacks.bufdelete() end,                   desc = "Delete Buffer" },
    { "<leader>bdo",     function() Snacks.bufdelete.other() end,             desc = "Delete All Other Buffers" },
    { "<leader>bda",     function() Snacks.bufdelete.all() end,               desc = "Delete All Buffers" },
  }
}
