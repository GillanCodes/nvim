# Nvim Config

## This is my custom Neovim setup — lightweight, minimalist, yet powerful.

### By GillanCodes

---

## 1. 🔌 Plugins

This config stays **lightweight** while covering all essentials:

- **File Navigation**
  - [yazi](https://github.com/mikavilpas/yazi.nvim) — file explorer

- **Coding**
  - [blink](https://github.com/saghen/blink.cmp) + [friendly snippets](https://github.com/rafamadriz/friendly-snippets) - Completion
  - [](https://github.com/)

---

## 2. ⌨️ Keymaps

Here are all the shortcuts I use :

| Action         | Mode          | Keybind                   | Description                      |
|----------------|---------------|---------------------------|----------------------------------|
| Find files     | Insert        | `jk`                      | Exit insert mode                 |
| Live grep      | Normal        | `<leader>f` or f          | Grep files                       |
| Delete Buffer  | Normal        | `<leader>bd`              | Delete current buffer w/o saving |
| Quit Buffer    | Normal        | `<leader>bq`              | Quit and save current buffer     |
| Create buffer  | Normal        | `<leader>bn`              | Create a buffer                  |
| Switch Buffer  | Normal        | `<Tab>` Or `<S-Tab>`      | Next / Prev buffer               |
| Split Vertical | Normal        | `<leader>sv`              | New Split buffer verticaly       |
| Split          | Normal        | `<leader>sh`              | New Split buffer horizontal      |
| Save           | Normal        | `<leader>w`               | Save file                        |
| Quit           | Normal        | `<leader>q`               | Quit                             |
| Split          | Normal        | `<leader>j` / `<leader>k` | Split Vertically / horizontally  |
| Navigation     | Normal        | `CRTL ` + hjkl            | Navigate windows                 |
| Resize         | Normal        | `CTRL` + Arrows           | Resize windows                   |
| Move Cursor    | Insert        | `CTRL` + hjkl             | Move while in insert mode        |
| Move lines     | Normal Visual | `<A-j>`                   | Move line(s) up                  |
| Move lines     | Normal Visual | `<A-k>`                   | Move line(s) down                |
| Auto Format    | Normal        | `<leader>fm`              | Auto format like prettier        |
| Terminal       | Normal        | `<C-Return>`              | Open a floating terminal         |
| Join           | Normal        | `J`                       | Join but better                  |
| Indentation    | Normal        | `>`                       | Indent right better (reselect)   |
| Indentation    | Normal        | `<`                       | Indent left better (reselect)    |


> 💡 You can replace `<leader>` with your leader key (default is `\` or `space` in my setup).

---

## 3. 🚀 Getting Started

Clone this config and symlink it:

```bash
git clone https://github.com/gillancodes/nvim ~/.config/nvim

---
```
