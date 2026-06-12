local snacks = require("snacks")

vim.keymap.set("n", "<leader>e", function ()
  snacks.explorer({
    git_status = true,
    git_status_open = true,
    git_untracked = true,
    env = { env = ".env" },
    hidden = true,
    auto_close = true,
    layout = { preset = "sidebar", preview = false, layout = { position = "left" } },
  })
end)

vim.keymap.set("n", "<leader><space>", function()
  snacks.picker.smart()
end)

vim.keymap.set("n", "<leader>ff", function()
  snacks.picker.files()
end)

vim.keymap.set("n", "<leader>n", function()
  snacks.picker.notifications()
end)

vim.keymap.set("n", "<leader>gg", function()
  snacks.lazygit()
end)
