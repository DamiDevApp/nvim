-- lua/plugins/fzf-lua.lua

vim.pack.add({
  "https://github.com/ibhagwan/fzf-lua",
  "https://github.com/nvim-tree/nvim-web-devicons",
})

require("fzf-lua").setup({
  -- Matches your Catppuccin Mocha colors automatically via fzf-lua's
  -- built-in "fzf-native" highlight-group mapping, no manual hex needed
  "fzf-native",
  winopts = {
    height = 0.85,
    width = 0.80,
    preview = {
      layout = "vertical", -- stack preview above results instead of side-by-side
    },
  },
})

-- Find files in the current working directory (respects .gitignore by default)
vim.keymap.set("n", "<leader>ff", "<cmd>FzfLua files<cr>", { desc = "Find Files" })

-- Live grep across the project (requires ripgrep: `rg`)
vim.keymap.set("n", "<leader>fg", "<cmd>FzfLua live_grep<cr>", { desc = "Live Grep" })

-- Search open buffers
vim.keymap.set("n", "<leader>fb", "<cmd>FzfLua buffers<cr>", { desc = "Find Buffers" })

-- Recently opened files
vim.keymap.set("n", "<leader>fo", "<cmd>FzfLua oldfiles<cr>", { desc = "Recent Files" })

-- Search help tags
vim.keymap.set("n", "<leader>fh", "<cmd>FzfLua help_tags<cr>", { desc = "Help Tags" })

-- Resume the last fzf-lua picker with its previous query/results
vim.keymap.set("n", "<leader>fr", "<cmd>FzfLua resume<cr>", { desc = "Resume Last Search" })

-- Grep for the word under cursor
vim.keymap.set("n", "<leader>fw", "<cmd>FzfLua grep_cword<cr>", { desc = "Grep Word Under Cursor" })
