require("triforce").setup({
	enabled = true, -- Enable/disable the entire plugin
	gamification_enabled = true, -- Enable XP, levels, achievements

	-- Notification settings
	notifications = {
		enabled = true, -- Master toggle for all notifications
		level_up = true, -- Show level up notifications
		achievements = true, -- Show achievement unlock notifications
	},

	auto_save_interval = 300, -- Save stats every 5 minutes

	-- Customize XP rewards (optional)
	xp_rewards = {
		char = 1, -- XP per character typed
		line = 1, -- XP per new line
		save = 50, -- XP per file save
	},
})
