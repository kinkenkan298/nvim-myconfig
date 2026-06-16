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

vim.keymap.set("n", "gf", function()
	if Laravel.app("gf").cursorOnResource() then
		return "<cmd>lua Laravel.commands.run('gf')<cr>"
	end
	return "gf"
end, { noremap = true, expr = true, desc = "Laravel:  Go To Resource" })

-- require("blade-nav").setup({
-- 	enable = true,
-- 	force_enable = false,
--
-- 	cache_timeout = 50000, -- Cache TTL in ms
-- 	debug = false,
--
-- 	-- Completion behavior
-- 	close_tag_on_complete = true,
-- 	include_routes_in_cmp = true,
--
-- 	-- Inertia
-- 	inertia_pages_path = nil, -- nil = "Pages" (default)
-- 	inertia_extensions = { "vue", "tsx", "jsx", "ts" },
--
-- 	-- Vue
-- 	jsconfig_path = "./jsconfig.json",
--
-- 	-- Extra directories for <x-component> resolution
-- 	laravel_components_paths = {
-- 		"resources/views/components",
-- 	},
--
-- 	-- Navigation targets (gf)
-- 	handlers = {
-- 		directive = true,
-- 		view = true,
-- 		livewire = true,
-- 		route = true,
-- 		config = true,
-- 		component = true,
-- 		inertia = true,
-- 		vue = true,
-- 	},
--
-- 	-- Completion/integration sources
-- 	integrations = {
-- 		gf = false,
-- 		cmp = false,
-- 		blink = true,
-- 		coq = false,
-- 		health = true,
-- 	},
--
-- 	-- Inline value annotations
-- 	annotations = {
-- 		show = false, -- Start with annotations visible
-- 		hl = "Comment", -- Highlight group for virtual text
-- 		prefix = " ⟶ ", -- Prefix before each value
-- 		max_len = 160, -- Max display length before truncation
-- 		debounce_ms = 120, -- Debounce for re-rendering on edits
-- 		show_on_load = true, -- Render annotations when a buffer loads
-- 		create_keymaps = true, -- Create K, <leader>bv, <leader>bcc maps
-- 	},
-- })
