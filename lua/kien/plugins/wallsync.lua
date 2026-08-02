local wallsync = require("wallsync")

wallsync.install_templates()

wallsync.setup({
	auto_start = true,
	auto_install_templates = true,
	notify = true,
	debounce_ms = 500,
	-- Optional: force "dark" or "light" if your generator does not update ~/.cache/wal/colors.
	mode = nil,
})

wallsync.start()
wallsync.sync()
