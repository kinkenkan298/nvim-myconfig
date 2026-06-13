vim.pack.add({
	{ src = "https://github.com/nvim-telescope/telescope.nvim", branch = "master" }, --enabled
	"https://github.com/andrew-george/telescope-themes",

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

	"https://github.com/lewis6991/gitsigns.nvim",

	"https://github.com/NvChad/nvim-colorizer.lua",

	"https://github.com/nvchad/ui",
	"https://github.com/nvchad/base46",
	"https://github.com/nvchad/volt",
})

require("kien.plugins.auto-pairs")

require("kien.plugins.snacks")

require("kien.plugins.blink")

require("kien.plugins.lsp.mason")
require("kien.plugins.lsp.lspconfig")

require("kien.plugins.conform-format")

require("kien.plugins.noice")
require("kien.plugins.colorizer")

require("kien.plugins.nvui")
