local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local mason_tool_installer = require("mason-tool-installer")

mason.setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

mason_lspconfig.setup({
	automatic_enable = true, -- set true to enable all LSP in `ensure_installed`
	ensure_installed = {
		"lua_ls",
		"ts_ls",
		"html",
		"cssls",
		"gopls",
		"tailwindcss",
		"emmet_ls",
		"emmet_language_server",
	},
})

mason_tool_installer.setup({
	ensure_installed = {
		"prettier",
		"stylua",
		"pint",
		"intelephense",
	},
})
