return {
  "lewis6991/satellite.nvim",
  config = function()
    require("satellite").setup({
      current_only = false,
      winblend = 50,
      zindex = 40,
      excluded_filetypes = { "NvimTree", "aerial", "toggleterm" },
      handlers = {
        cursor = { enable = true },
        gitsigns = { enable = true },
        diagnostic = { enable = true },
        search = { enable = true },
        marks = { enable = true },
      },
    })
  end,
}
