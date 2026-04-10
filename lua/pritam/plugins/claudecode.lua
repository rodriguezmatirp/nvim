return {
  "coder/claudecode.nvim",
  config = function()
    require("claudecode").setup({
      auto_start = true,
      terminal = {
        provider = "toggleterm",
        auto_close = true,
      },
    })

    vim.keymap.set("n", "<leader>ac", "<cmd>ClaudeCode<CR>", { desc = "Toggle Claude Code" })
    vim.keymap.set("n", "<leader>as", "<cmd>ClaudeCodeSend<CR>", { desc = "Send to Claude" })
    vim.keymap.set("v", "<leader>as", "<cmd>ClaudeCodeSend<CR>", { desc = "Send selection to Claude" })
  end,
}
