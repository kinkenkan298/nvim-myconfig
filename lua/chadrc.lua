---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "chadracula-evondev",
	hl_override = {
		Comment = { italic = true },
		["@comment"] = { italic = true },
	},
}

M.ui = {
	statusline = {
		separator_style = "round",
		theme = "default",
		enabled = true,
	},
	telescope = {
		style = "borderless",
	},
	tabufline = {
		enabled = true,
	},
}

return M
