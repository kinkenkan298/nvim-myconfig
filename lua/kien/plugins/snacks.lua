local snacks = require("snacks")

vim.keymap.set("n", "<leader>e", function ()
  snacks.explorer({
    git_status = true,
    git_status_open = true,
    git_untracked = true,
    env = { env = ".env" },
    hidden = true,
    auto_close = false,
    layout = { preset = "sidebar", preview = false, layout = { position = "left" } },
  })
end)
