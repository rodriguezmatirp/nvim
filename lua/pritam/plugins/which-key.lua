return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
  opts = {},
  config = function()
    local wk = require("which-key")

    wk.setup({})

    wk.add({
      -- Top-level single mappings
      { "<leader>+", desc = "Increment number" },
      { "<leader>-", desc = "Decrement number" },
      { "<leader>nh", desc = "Clear search highlights" },

      -- Groups
      { "<leader>c", group = "Code actions" },
      { "<leader>D", group = "Diagnostics" },
      { "<leader>e", group = "Explorer" },
      { "<leader>f", group = "Find (Telescope)" },
      { "<leader>g", group = "Git" },
      { "<leader>h", group = "Hunks (Git)" },
      { "<leader>l", group = "Lint / LazyGit" },
      { "<leader>m", group = "Format" },
      { "<leader>n", group = "Search" },
      { "<leader>r", group = "Rename / Restart LSP" },
      { "<leader>s", group = "Splits" },
      { "<leader>t", group = "Tabs" },
      { "<leader>w", group = "Session" },
      { "<leader>x", group = "Trouble / Diagnostics" },
      { "<leader>n", group = "Neotest" },
      { "<leader>a", group = "Aerial / Claude" },
      { "<leader>t", group = "Tabs / Terminal" },

      -- DAP (space prefix, not leader)
      { "<space>b", desc = "Toggle breakpoint" },
      { "<space>gb", desc = "Run to cursor" },
      { "<space>?", desc = "Eval variable under cursor" },
    })
  end,
}
