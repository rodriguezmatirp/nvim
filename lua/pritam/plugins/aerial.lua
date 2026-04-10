return {
  "stevearc/aerial.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("aerial").setup({
      backends = { "treesitter", "lsp" },
      layout = {
        max_width = { 40, 0.2 },
        width = nil,
        min_width = 25,
        default_direction = "prefer_right",
      },
      show_guides = true,
      attach_mode = "window",
      filter_kind = {
        "Class", "Constructor", "Enum", "Function",
        "Interface", "Module", "Method", "Struct",
      },
    })

    vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle<CR>", { desc = "Toggle code outline" })
    vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { desc = "Prev symbol" })
    vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { desc = "Next symbol" })
  end,
}
