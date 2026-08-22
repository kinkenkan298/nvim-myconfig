require("vim._core.ui2").enable({
	enable = true,
	msg = {
		target = "cmd",
		pager = { height = 0.5 },
		dialog = { height = 0.5 },
		cmd = { height = 0.5 },
		msg = { height = 0.5, timeout = 4500 },
	},
})

vim.g.base46_cache = vim.fn.stdpath("data") .. "/base46_cache/"

for _, v in ipairs(vim.fn.readdir(vim.g.base46_cache)) do
	dofile(vim.g.base46_cache .. v)
end

vim.cmd.colorscheme("caelestia")
vim.g.caelestia_transparent = false

require("kien.configs")
require("kien.core")
