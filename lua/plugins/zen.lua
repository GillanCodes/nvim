return {
  "folke/zen-mode.nvim",
  cmd = "ZenMode",
  keys = {
    { "<leader>zz", "<cmd>ZenMode<cr>", desc = "Toggle Zen Mode" },
  },
  opts = {
    window = {
      width = 90, -- width of the centered text area
      height = 1, -- height of the zen window
      options = {
        signcolumn = "no", -- disable signcolumn
        number = false, -- disable number column
        relativenumber = false, -- disable relative numbers
        cursorline = false, -- disable cursorline
        cursorcolumn = false, -- disable cursor column
        foldcolumn = "0", -- disable fold column
        list = false, -- disable whitespace characters
        wrap = true,
      },
    },
    plugins = {
      -- disable some global vim options (vim.o...)
      options = {
        enabled = true,
        ruler = false, -- disables the ruler text in the cmd line area
        showcmd = false, -- disables the command in the last line of the screen
        cmdheight = -1,
        showtabline = 0,
        showmode = 0
      },
      twilight = { enabled = true }, -- enable to start Twilight when zen mode opens
      gitsigns = { enabled = false }, -- disables git signs
      tmux = { enabled = false }, -- disables the tmux statusline
    },
    -- callback where you can add custom code when the Zen window opens
    on_open = function()
      vim.g.cmp_active = false
    end,
    -- callback where you can add custom code when the Zen window closes
    on_close = function()
      vim.g.cmp_active = true
    end,
  },
}
