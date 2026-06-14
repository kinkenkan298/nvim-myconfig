local laravel = require("laravel")
laravel.setup({
	features = {
		pickers = {
			enabled = true,
			provider = "snacks",
		},
	},
})

vim.g.Laravel = laravel

vim.keymap.set("n", "<leader>ll", function()
	Laravel.pickers.laravel()
end)
