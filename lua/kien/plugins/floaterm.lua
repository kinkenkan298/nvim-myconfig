require("floaterm").setup({
	border = false,
	size = { h = 80, w = 90 },

	-- to use, make this func(buf)
	mappings = { sidebar = nil, term = nil },

	terminals = {
		{ name = "Terminal", cmd = "neofetch" },
	},
})

vim.keymap.set("n", "<leader>th", function()
	require("floaterm").toggle()
end)
