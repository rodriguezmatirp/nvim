return {
  "RRethy/vim-illuminate",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("illuminate").configure({
      providers = { "lsp", "treesitter", "regex" },
      delay = 100,
      filetype_overrides = {},
      filetypes_denylist = { "NvimTree", "aerial", "toggleterm", "TelescopePrompt" },
      under_cursor = true,
      large_file_cutoff = 2000,
      min_count_to_highlight = 1,
    })

    vim.keymap.set("n", "]]", function() require("illuminate").goto_next_reference() end, { desc = "Next reference" })
    vim.keymap.set("n", "[[", function() require("illuminate").goto_prev_reference() end, { desc = "Prev reference" })
  end,
}
