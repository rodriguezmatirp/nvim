# Neovim Keymaps Cheatsheet

**Leader key: `<Space>`**

---

## General

| Key | Action |
|-----|--------|
| `jk` | Exit insert mode |
| `<leader>nh` | Clear search highlights |
| `<leader>+` | Increment number |
| `<leader>-` | Decrement number |

---

## Windows & Splits

| Key | Action |
|-----|--------|
| `<leader>sv` | Split vertical |
| `<leader>sh` | Split horizontal |
| `<leader>se` | Equalize splits |
| `<leader>sx` | Close split |
| `<leader>sm` | Maximize/restore split |

---

## Tabs

| Key | Action |
|-----|--------|
| `<leader>to` | New tab |
| `<leader>tx` | Close tab |
| `<leader>tn` | Next tab |
| `<leader>tp` | Prev tab |
| `<leader>tf` | Open buffer in new tab |

---

## File Explorer (nvim-tree)

| Key | Action |
|-----|--------|
| `<leader>ee` | Toggle explorer |
| `<leader>ef` | Focus current file |
| `<leader>ec` | Collapse tree |
| `<leader>er` | Refresh tree |

---

## Telescope (Fuzzy Finder)

| Key | Action |
|-----|--------|
| `<leader>ff` | Find files |
| `<leader>fr` | Recent files |
| `<leader>fs` | Live grep |
| `<leader>fc` | Grep word under cursor |
| `<leader>ft` | Find TODOs |
| `<C-k>` / `<C-j>` | Prev / Next result (in picker) |
| `<C-q>` | Send to quickfix list |

---

## LSP

| Key | Action |
|-----|--------|
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gR` | Show references |
| `gi` | Show implementations |
| `gt` | Show type definitions |
| `K` | Hover documentation |
| `<leader>ca` | Code actions |
| `<leader>rn` | Rename symbol |
| `<leader>Db` | Buffer diagnostics |
| `<leader>Dl` | Line diagnostics (float) |
| `[d` / `]d` | Prev / Next diagnostic |
| `<leader>rs` | Restart LSP |

---

## Completion (nvim-cmp)

| Key | Action |
|-----|--------|
| `<C-k>` / `<C-j>` | Prev / Next suggestion |
| `<C-Space>` | Trigger completion |
| `<CR>` | Confirm selection |
| `<C-e>` | Close completion |
| `<C-b>` / `<C-f>` | Scroll docs up / down |

---

## Git — Hunks (Gitsigns)

| Key | Action |
|-----|--------|
| `]h` / `[h` | Next / Prev hunk |
| `<leader>hs` | Stage hunk |
| `<leader>hr` | Reset hunk |
| `<leader>hS` | Stage buffer |
| `<leader>hR` | Reset buffer |
| `<leader>hu` | Undo stage |
| `<leader>hp` | Preview hunk |
| `<leader>hb` | Blame line |
| `<leader>hB` | Toggle blame |
| `<leader>hd` | Diff this |
| `<leader>hD` | Diff vs parent |
| `ih` | Select hunk (text object) |

---

## Git — UI

| Key | Action |
|-----|--------|
| `<leader>gs` | Open Neogit |
| `<leader>lg` | Open LazyGit |

---

## Trouble (Diagnostics List)

| Key | Action |
|-----|--------|
| `<leader>xw` | Workspace diagnostics |
| `<leader>xd` | Document diagnostics |
| `<leader>xq` | Quickfix list |
| `<leader>xl` | Location list |
| `<leader>xt` | TODOs in Trouble |

---

## Debugging (DAP)

| Key | Action |
|-----|--------|
| `<F1>` | Continue |
| `<F2>` | Step into |
| `<F3>` | Step over |
| `<F4>` | Step out |
| `<F5>` | Step back |
| `<F12>` | Restart |
| `<space>b` | Toggle breakpoint |
| `<space>gb` | Run to cursor |
| `<space>?` | Eval variable under cursor |

---

## Code & Formatting

| Key | Action |
|-----|--------|
| `<leader>mp` | Format file / selection |
| `<leader>l` | Lint file |
| `s` | Substitute with motion |
| `ss` | Substitute line |
| `S` | Substitute to end of line |

---

## TODOs

| Key | Action |
|-----|--------|
| `]t` / `[t` | Next / Prev TODO |

---

## Session

| Key | Action |
|-----|--------|
| `<leader>ws` | Save session |
| `<leader>wr` | Restore session |
