return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  config = function()
    require("noice").setup({
      lsp = {
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
        signature = { enabled = false }, -- disable if lsp_signature or similar is used
      },
      presets = {
        bottom_search = true,        -- classic `/` search at the bottom
        command_palette = true,      -- position cmdline and popupmenu together
        long_message_to_split = true,
        inc_rename = false,
        lsp_doc_border = true,
      },
      routes = {
        -- suppress "written" messages
        {
          filter = { event = "msg_show", kind = "", find = "written" },
          opts = { skip = true },
        },
      },
    })

    -- Keymaps
    vim.keymap.set("n", "<leader>nm", "<cmd>Noice<cr>", { desc = "Noice message history" })
    vim.keymap.set("n", "<leader>nd", "<cmd>NoiceDismiss<cr>", { desc = "Dismiss Noice" })
  end,
}
