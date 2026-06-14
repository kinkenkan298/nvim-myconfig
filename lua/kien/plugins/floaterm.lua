require("floaterm").setup({
	border = true,
	size = { h = 80, w = 90 },

	mappings = { sidebar = nil, term = nil },
})

vim.keymap.set("n", "<leader>th", function()
	require("floaterm").toggle()
end)
