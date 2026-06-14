local snacks = require("snacks")

snacks.setup({
	styles = {
		input = {
			keys = {
				n_esc = { "<C-c>", { "cmp_close", "cancel" }, mode = "n", expr = true },
				i_esc = { "<C-c>", { "cmp_close", "stopinsert" }, mode = "i", expr = true },
			},
		},
	},

	input = { enabled = true },
	quickfile = {
		enabled = true,
		exclude = { "latex" },
	},

	notifier = {},

	picker = {
		enabled = true,
		matchers = {
			frecency = true,
			cwd_bonus = false,
		},
		exclude = {
			".git",
			"node_modules",
			"dist",
			"build",
		},
		formatters = {
			file = {
				filename_first = true,
				filename_only = false,
				icon_width = 2,
			},
		},
		layout = {
			preset = "telescope", -- defaults to this layout unless overridden
			cycle = false,
		},
		layouts = {
			select = {
				preview = false,
				layout = {
					backdrop = false,
					width = 0.6,
					min_width = 80,
					height = 0.4,
					min_height = 10,
					box = "vertical",
					border = "rounded",
					title = "{title}",
					title_pos = "center",
					{ win = "input", height = 1, border = "bottom" },
					{ win = "list", border = "none" },
					{ win = "preview", title = "{preview}", width = 0.6, height = 0.4, border = "top" },
				},
			},
			telescope = {
				reverse = true, -- set to false for search bar on top
				layout = {
					box = "horizontal",
					backdrop = false,
					width = 0.8,
					height = 0.9,
					border = "none",
					{
						box = "vertical",
						{ win = "list", title = " Results ", title_pos = "center", border = "rounded" },
						{
							win = "input",
							height = 1,
							border = "rounded",
							title = "{title} {live} {flags}",
							title_pos = "center",
						},
					},
					{
						win = "preview",
						title = "{preview:Preview}",
						width = 0.50,
						border = "rounded",
						title_pos = "center",
					},
				},
			},
			ivy = {
				layout = {
					box = "vertical",
					backdrop = false,
					width = 0,
					height = 0.4,
					position = "bottom",
					border = "top",
					title = " {title} {live} {flags}",
					title_pos = "left",
					{ win = "input", height = 1, border = "bottom" },
					{
						box = "horizontal",
						{ win = "list", border = "none" },
						{ win = "preview", title = "{preview}", width = 0.5, border = "left" },
					},
				},
			},
		},
	},
})

vim.keymap.set("n", "<leader>e", function()
	snacks.explorer({
		git_status = true,
		git_status_open = true,
		git_untracked = true,
		env = { env = ".env" },
		hidden = true,
		auto_close = true,
		layout = { preset = "sidebar", preview = false, layout = { position = "left" } },
	})
end)

vim.keymap.set("n", "<leader><space>", function()
	snacks.picker.smart()
end)

vim.keymap.set("n", "<leader>ff", function()
	snacks.picker.files()
end)

vim.keymap.set("n", "<leader>n", function()
	snacks.notifier.show_history()
end)

vim.keymap.set("n", "<leader>gg", function()
	snacks.lazygit()
end)

snacks.scroll.enable()
