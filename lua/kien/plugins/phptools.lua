require("phptools").setup({
	ui = {
		enable = true, -- replace vim.ui.select, vim.ui.input, vim.notify with custom floating windows
		fzf = false, -- use fzf for test filtering if available
	},
	custom_toggles = {
		enable = false, -- enable <C-a>/<C-x> word/operator toggles
		-- Built-in word groups:
		--   { "public", "protected", "private" },
		--   { "self", "static" },
		--   { "true", "false" },
		--   { "require", "require_once", "include" },
		--   { "abstract", "final" },
		--   { "class", "interface", "trait", "enum" },
		--   { "string", "int", "float", "bool", "array" },
		-- Built-in operator pairs:
		--   == <-> ===, != <-> !==, > <-> >=, < <-> <=,
		--   && <-> ||, ++ <-> --, -> <-> =>
		-- Add custom word groups to extend defaults:
		-- custom_toggles = { { "yes", "no" }, { "on", "off" } },
	},
	gf = {
		enable = true, -- smart gf navigation for PHP, Blade, Twig
		max_depth = 5, -- max recursion depth for constant resolution
		project_root_markers = { ".git", "composer.json", ".env" },
		excluded_dirs = { "vendor", "node_modules", ".git" },
		custom_constants = {}, -- user-defined constants, e.g. { MY_CONST = "/path/to/dir" }
		keymaps = { -- set any to false to disable
			gf = "gf", -- context-aware goto file
			browse_components = "<leader>gC", -- list all Blade components
			browse_livewire = "<leader>gw", -- list all Livewire components
			toggle_livewire = "<leader>gW", -- switch between Livewire class and Blade view
			browse_routes = "<leader>gr", -- list Laravel routes and jump to controller
			browse_logs = "<leader>gl", -- list and open log files
			tail_logs = "<leader>gL", -- tail -f laravel.log in a terminal tab
		},
	},
	property_hooks = {
		enable = true, -- PHP 8.4 property hooks generation
	},
})
