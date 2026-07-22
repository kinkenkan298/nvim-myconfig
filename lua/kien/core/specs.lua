local gh = function(repo)
	return "https://github.com/" .. repo
end

return {
	{ src = gh("folke/snacks.nvim") },

	{ src = gh("saghen/blink.lib") },
	{ src = gh("saghen/blink.cmp") },

	{ src = gh("nvim-treesitter/nvim-treesitter"), branch = "main" },

	{ src = gh("windwp/nvim-autopairs") },

	{ src = gh("stevearc/conform.nvim") },
	{ src = gh("nvim-lua/plenary.nvim") },
	{ src = gh("nvim-tree/nvim-web-devicons") },
	{ src = gh("nvim-lualine/lualine.nvim") },

	{ src = gh("neovim/nvim-lspconfig") },
	{ src = gh("mason-org/mason.nvim") },
	{ src = gh("mason-org/mason-lspconfig.nvim") },
	{ src = gh("WhoIsSethDaniel/mason-tool-installer.nvim") },

	{ src = gh("folke/noice.nvim") },
	{ src = gh("MunifTanjim/nui.nvim") },

	{ src = gh("lewis6991/gitsigns.nvim") },

	{ src = gh("NvChad/nvim-colorizer.lua") },

	{ src = gh("nvchad/ui") },
	{ src = gh("nvchad/base46") },
	{ src = gh("nvchad/volt") },
	{ src = gh("nvzone/showkeys") },
	{ src = gh("rachartier/tiny-inline-diagnostic.nvim") },
	{ src = gh("shellRaining/hlchunk.nvim") },
	{ src = gh("nvzone/floaterm") },

	{ src = gh("folke/lazydev.nvim") },
	{ src = gh("kylechui/nvim-surround"), version = vim.version.range("4.x") },

	{ src = gh("adalessa/laravel.nvim") },
	{ src = gh("kevinhwang91/promise-async") },
	{ src = gh("ricardoramirezr/blade-nav.nvim") },
	{ src = gh("nvim-neotest/nvim-nio") },

	{ src = gh("slowy07/mywpm.nvim") },

	{ src = gh("gisketch/triforce.nvim") },

	{ src = gh("haringsrob/laravel-dev-tools") },
	{ src = gh("ccaglak/phptools.nvim") },

	{ src = gh("NvChad/WallSync") },
}
