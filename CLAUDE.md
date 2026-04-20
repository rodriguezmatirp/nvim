# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a Neovim configuration managed with [lazy.nvim](https://github.com/folke/lazy.nvim). All Lua code lives under `lua/pritam/`.

## Common Commands

```bash
# Format Lua files
stylua lua/

# Open Neovim with this config (from the repo root)
nvim
```

Inside Neovim:
- `:Lazy` — open plugin manager UI (update, sync, clean)
- `:Lazy sync` — install/update all plugins
- `:Mason` — manage LSP servers and tools
- `:checkhealth` — diagnose configuration issues

## Architecture

```
init.lua                  # Entry point: loads core + lazy
lua/pritam/
  core/
    options.lua           # vim.opt settings
    keymaps.lua           # Base keybindings (leader = Space)
    init.lua              # Loads options + keymaps
  lazy.lua                # Bootstraps lazy.nvim, imports all plugins
  plugins/
    init.lua              # Base utility plugins (plenary, tmux-navigator)
    lsp/
      mason.lua           # LSP/tool installer
      lspconfig.lua       # Per-server LSP setup + keybindings
    *.lua                 # One file per plugin
```

**Load order**: `init.lua` → `core` (options/keymaps) → `lazy.nvim` bootstraps → all `plugins/*.lua` modules.

## Plugin File Conventions

Each file in `lua/pritam/plugins/` returns a lazy.nvim plugin spec table:

```lua
return {
  "author/plugin-name",
  dependencies = { "dep1" },
  event = { "BufReadPre", "BufNewFile" },  -- for lazy loading
  config = function()
    require("plugin").setup({ ... })
    vim.keymap.set("n", "<leader>x", ...)
  end,
}
```

Use `opts = {}` instead of `config` when only passing options with no custom logic.

**Common lazy-load triggers used in this config:**
- `event = "VimEnter"` — startup (alpha dashboard)
- `event = "InsertEnter"` — completion (nvim-cmp)
- `event = { "BufReadPre", "BufNewFile" }` — file open (LSP, treesitter)
- `event = "VeryLazy"` — after UI ready (which-key)
- `cmd = "CommandName"` — on command use

## Formatting

Lua code is formatted with `stylua`. Config in `stylua.toml`:
- Line width: 120
- Indent: tabs (width 2)
- Quotes: double
- Call parentheses: always

## Key Keybindings Reference

See `CHEATSHEET.md` for the full list. Key patterns:
- `<leader>` = Space
- `jk` = exit insert mode
- `<leader>f*` = Telescope (find files, grep, etc.)
- `<leader>e` = nvim-tree file explorer
- `<leader>h*` = git hunk operations (gitsigns)
- `<leader>x*` = Trouble diagnostics
- `gd`, `gR`, `K` = LSP actions
- `<F1-F5>`, `<F12>` = DAP debugger

## Adding a New Plugin

1. Create `lua/pritam/plugins/plugin-name.lua` returning a lazy spec.
2. No registration needed — lazy.nvim auto-imports everything under `pritam.plugins`.
3. For LSP servers, add to mason's `ensure_installed` in `lsp/mason.lua` and configure in `lsp/lspconfig.lua`.

## Colorscheme

`colorscheme.lua` has multiple gruvbox variants commented out. Switch themes by commenting/uncommenting the relevant block. Currently active: `eddyekofo94/gruvbox-flat.nvim`.
