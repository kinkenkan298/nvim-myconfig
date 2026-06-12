vim.pack.add({
	"https://github.com/bluz71/vim-moonfly-colors",
	-- "https://github.com/nvim-mini/mini.nvim",
	"https://github.com/saghen/blink.lib",
	"https://github.com/saghen/blink.cmp",
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter", branch = "main" },
	"https://github.com/neovim/nvim-lspconfig",
	"https://github.com/mason-org/mason.nvim",
	"https://github.com/windwp/nvim-autopairs",
	"https://github.com/stevearc/conform.nvim",
	"https://github.com/nvim-lua/plenary.nvim",
	-- "https://github.com/nvim-tree/nvim-web-devicons",
})

local MiniFiles = require("mini.files")

MiniFiles.setup({
	mappings = {
		go_in = "<CR>",
		go_in_plus = "L",
		go_out = "_",
		go_out_plus = "H",
	},
})

vim.keymap.set("n", "<leader>e", function()
	MiniFiles.open(vim.api.nvim_buf_get_name(0), false)
	MiniFiles.reveal_cwd()
end, { desc = "Toggle into currently opened file" })

local MiniNotify = require("mini.notify")
MiniNotify.setup({
	content = {
		format = function(notify)
			return notify.msg
		end,
	},
})

require("mini.cmdline").setup({
	autocorrect = { enable = false },
})
--
require("mini.surround").setup({})
-- Default Keymaps
-- | `sa` | Add surrounding or Direct with 'saiw' |
-- | `sd` | Delete surrounding |
-- | `sr` | Replace surrounding |
-- | `sf` | Find surrounding (right) |
-- | `sF` | Find surrounding (left) |
-- | `sh` | Highlight surrounding |
-- | `sn` | Update n_lines |
-- | `l` / `n` | as suffix for prev/next |

local MiniPick = require("mini.pick")
local MiniExtra = require("mini.extra")
MiniPick.setup()
MiniExtra.setup()

vim.keymap.set("n", "<leader><space>", function()
	MiniPick.builtin.files()
end, { desc = "Toggle File Picker" })
vim.keymap.set("n", "<leader>ps", function()
	MiniPick.builtin.grep({ pattern = vim.fn.expand("<cword>") })
end, { desc = "Grep word/Search word" })
vim.keymap.set("n", "<leader>vh", function()
	MiniPick.builtin.help()
end, { desc = "Mini Help" })

vim.keymap.set("n", "<leader>xx", function()
	MiniExtra.pickers.diagnostic()
end, { desc = "Mini Picker Diagnostics" })
vim.keymap.set("n", "<leader>pk", function()
	MiniExtra.pickers.keymaps()
end, { desc = "Search keymaps" })

local cmp = require("blink.cmp")
cmp.build():pwait()
cmp.setup({
	keymap = { preset = "enter" },
	completion = {
		documentation = { auto_show = true },
		accept = { auto_brackets = { enabled = false } },
		list = { selection = { preselect = false, auto_insert = true } },
	},
	cmdline = { enabled = false },
})

require("treesitter")
require("lsp")

require("nvim-autopairs").setup({
	fast_wrap = {},
	disable_filetype = { "TelescopePrompt", "vim" },
})

require("conform-format")
