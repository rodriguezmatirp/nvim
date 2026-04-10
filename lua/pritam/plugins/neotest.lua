return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    "nvim-neotest/neotest-go",
  },
  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-go")({
          experimental = {
            test_table = true,
          },
          args = { "-count=1", "-timeout=60s" },
        }),
      },
    })

    local neotest = require("neotest")

    vim.keymap.set("n", "<leader>nr", function() neotest.run.run() end, { desc = "Run nearest test" })
    vim.keymap.set("n", "<leader>nf", function() neotest.run.run(vim.fn.expand("%")) end, { desc = "Run file tests" })
    vim.keymap.set("n", "<leader>nd", function() neotest.run.run({ strategy = "dap" }) end, { desc = "Debug nearest test" })
    vim.keymap.set("n", "<leader>ns", function() neotest.run.stop() end, { desc = "Stop test" })
    vim.keymap.set("n", "<leader>no", function() neotest.output_panel.toggle() end, { desc = "Toggle test output" })
    vim.keymap.set("n", "<leader>nS", function() neotest.summary.toggle() end, { desc = "Toggle test summary" })
  end,
}
