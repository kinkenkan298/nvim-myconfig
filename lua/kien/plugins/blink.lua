local blink = require("blink.cmp")
blink.build():pwait()

blink.setup({
	-- keymaps
	keymap = {
		preset = "enter",
	},

	-- editor insert mode completions
	completion = {
		menu = {
			auto_show = true, -- show on type
			draw = {
				components = {
					kind_icon = {
						text = function(ctx)
							if ctx.source_name == "blade-nav" then
								return " "
							end
							return ctx.kind_icon
						end,
						highlight = function(ctx)
							if ctx.source_name == "blade-nav" then
								return "BlinkCmpKindBladeNav"
							end
							return "BlinkCmpKind" .. ctx.kind
						end,
					},
				},
			},
		},
		documentation = {
			auto_show = false, -- show function signature/docs
		},
		ghost_text = {
			enabled = false,
			show_with_menu = false,
		},
		accept = {
			auto_brackets = {
				enabled = true,
			},
		},
	},

	-- cmdline completions
	cmdline = {
		enabled = true,
		keymap = { preset = "cmdline" },
		completion = {
			menu = { auto_show = true },
		},
	},

	sources = {
		default = { "lsp", "blade-nav", "path", "buffer", "snippets" },
		providers = {
			lsp = {
				opts = {
					tailwind_color_icon = "󱓻",
				},
			},
			["blade-nav"] = {
				name = "blade-nav",
				module = "blade-nav.integrations.blink",
			},
		},
	},

	appearance = {
		use_nvim_cmp_as_default = false,
		nerd_font_variant = "mono",
	},
})
