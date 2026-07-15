require("avante").setup({
	log_level = 1,
	provider = "claude",
	providers = {
		claude = {
			endpoint = "http://localhost:20128/v1",
			model = "oc/deepseek-v4-flash-free",
			timeout = 30000, -- Timeout in milliseconds
			extra_request_body = {
				temperature = 0.75,
				max_tokens = 20480,
			},
		},
	},
	behaviour = {
		auto_suggestions = true,
		enable_fastapply = true,
	},
	input = {
		provider = "snacks", -- "native" | "dressing" | "snacks"
		provider_opts = {
			-- Snacks input configuration
			title = "Avante Input",
			icon = " ",
			placeholder = "Enter your API key...",
		},
	},
})
