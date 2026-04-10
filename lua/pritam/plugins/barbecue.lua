return {
  "utilyre/barbecue.nvim",
  name = "barbecue",
  version = "*",
  dependencies = {
    "SmiteshP/nvim-navic",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("barbecue").setup({
      theme = "rose-pine",
      include_buftypes = { "" },
      exclude_filetypes = { "neogit", "toggleterm", "NvimTree", "aerial" },
      show_modified = true,
      show_dirname = true,
      show_basename = true,
      show_navic = true,
      lead_custom_section = function() return " " end,
      symbols = {
        modified = "●",
        ellipsis = "…",
        separator = "",
      },
    })
  end,
}
