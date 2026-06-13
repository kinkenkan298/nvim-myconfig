require("base46").load_all_highlights()

require("nvchad")

vim.keymap.set("n", "<C-t>", function()
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
