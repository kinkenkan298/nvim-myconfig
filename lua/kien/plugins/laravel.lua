local laravel = require("laravel")
laravel.setup({
	features = {
		pickers = {
			enable = true,
			provider = "snacks",
		},
	},
	extensions = {
		route_info = { enable = true, view = "simple" }, -- "simple" | "top" | "right"
		completion = {
			enable = true,
		},
	},
})

vim.g.Laravel = laravel

vim.keymap.set("n", "<leader>ll", function()
	Laravel.pickers.laravel()
end, { desc = "Laravel picker" })

vim.keymap.set("n", "<leader>la", function()
	Laravel.pickers.artisan()
end, { desc = "Laravel: Artisan Picker" })

-- vim.keymap.set("n", "gf", function()
-- 	if Laravel.app("gf").cursorOnResource() then
-- 		return "<cmd>lua Laravel.commands.run('gf')<cr>"
-- 	end
-- 	return "gf"
-- end, { noremap = true, expr = true, desc = "Laravel:  Go To Resource" })
