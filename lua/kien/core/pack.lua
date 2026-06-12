vim.pack.add({
	"https://github.com/bluz71/vim-moonfly-colors",
	-- "https://github.com/nvim-mini/mini.nvim",
	--
	"https://github.com/folke/snacks.nvim",

	"https://github.com/saghen/blink.lib",
	"https://github.com/saghen/blink.cmp",

	{ src = "https://github.com/nvim-treesitter/nvim-treesitter", branch = "main" },

	"https://github.com/windwp/nvim-autopairs",

	"https://github.com/stevearc/conform.nvim",
	"https://github.com/nvim-lua/plenary.nvim",

	"https://github.com/nvim-tree/nvim-web-devicons",
	"https://github.com/nvim-lualine/lualine.nvim",

	"https://github.com/neovim/nvim-lspconfig",
	"https://github.com/mason-org/mason.nvim",
	"https://github.com/mason-org/mason-lspconfig.nvim",
	"https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim",

	"https://github.com/folke/noice.nvim",
	"https://github.com/MunifTanjim/nui.nvim",
})

require("kien.plugins.auto-pairs")

require("kien.plugins.snacks")

require("kien.plugins.blink")

require("kien.plugins.lsp.mason")
require("kien.plugins.lsp.lspconfig")

require("kien.plugins.conform-format")

require("kien.plugins.noice")
