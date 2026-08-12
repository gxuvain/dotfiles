return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    dashboard = {
      enabled = true,
      preset = {
        keys = {
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
          { icon = " ", key = "s", desc = "Restore Session", section = "session" },
          { icon = "󰒲 ", key = "L", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
        header = [[
      dMMMMb  dMMMMMP .aMMMb  dMP dMP dMP dMMMMMMMMb
     dMP dMP dMP     dMP"dMP dMP dMP amr dMP"dMP"dMP
    dMP dMP dMMMP   dMP dMP dMP dMP dMP dMP dMP dMP
  dMP dMP dMP     dMP.aMP  YMvAP" dMP dMP dMP dMP
dMP dMP dMMMMMP  VMMMP"    VP"  dMP dMP dMP dMP]]
      },
    },
    indent = { enabled = true },
    input = { enabled = true },
    picker = {
      enabled = true,
      prompt = "🦕 ",
    },
    scope = { enabled = true },
    words = { enabled = true },
    zen = { enabled = true },
    git = { enabled = true }
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
    { "<leader>ss",      function() Snacks.picker.lsp_symbols() end,          desc = "LSP Symbols" },
    -- Buffer
    { "<leader>bd",      function() Snacks.bufdelete() end,                   desc = "Delete Buffer" },
    { "<leader>bdo",     function() Snacks.bufdelete.other() end,             desc = "Delete All Other Buffers" },
    { "<leader>bda",     function() Snacks.bufdelete.all() end,               desc = "Delete All Buffers" },
    -- Other
    { "<leader>z",       function() Snacks.zen() end,                         desc = "Toggle Zen Mode" },
  }
}
