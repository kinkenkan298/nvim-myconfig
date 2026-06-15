local config = {
	formatters_by_ft = {
		lua = { "stylua" },
		-- python = { "isort", "black" },
		-- You can customize some of the format options for the filetype (:help conform.format)
		rust = { "rustfmt", lsp_format = "fallback" },
		-- Conform will run the first available formatter
		javascript = { "prettierd", "prettier", stop_after_first = true },

		php = { "pint" },
		blade = { "pint" },
	},
	format_on_save = {
		-- These options will be passed to conform.format()
		timeout_ms = 1500,
		lsp_format = "fallback",
	},
}

require("conform").setup(config)
