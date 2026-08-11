vim.pack.add({
    'https://github.com/stevearc/oil.nvim',
})
require("oil").setup({
	columns = {
		"icon",
		"permissions",
		"size",
		"mtime",
	},
	-- Window options
	win_options = {
		wrap = false,
		signcolumn = "yes",
	},
})

-- Open parent directory with -
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
