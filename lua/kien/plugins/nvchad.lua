require("base46").load_all_highlights()

require("nvchad")

vim.keymap.set("n", "<leader>tt", function()
	require("nvchad.themes").open({
		style = "compact",
	})
end)

if require("nvconfig").ui.tabufline.enabled then
	vim.keymap.set("n", "<leader>b", "<cmd>enew<CR>", { desc = "buffer new" })

	vim.keymap.set("n", "<tab>", function()
		require("nvchad.tabufline").next()
	end, { desc = "buffer goto next" })

	vim.keymap.set("n", "<S-tab>", function()
		require("nvchad.tabufline").prev()
	end, { desc = "buffer goto prev" })

	vim.keymap.set("n", "<leader>x", function()
		require("nvchad.tabufline").close_buffer()
	end, { desc = "buffer close" })
end

require("showkeys").setup({
	maxkeys = 4,
	show_count = false,
	position = "bottom-center",

	keyformat = {
		["<BS>"] = "󰁮 ",
		["<CR>"] = "󰘌",
		["<Space>"] = "󱁐",
		["<Up>"] = "󰁝",
		["<Down>"] = "󰁅",
		["<Left>"] = "󰁍",
		["<Right>"] = "󰁔",
		["<PageUp>"] = "Page 󰁝",
		["<PageDown>"] = "Page 󰁅",
		["<M>"] = "Alt",
		["<C>"] = "Ctrl",
	},
})

require("showkeys").open()
