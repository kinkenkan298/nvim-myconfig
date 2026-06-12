
-- local MiniFiles = require("mini.file")
--
-- vim.keymap.set("n", "<leader>e", function()
--   MiniFiles.open(vim.api.nvim_buf_get_name(0), false)
--   MiniFiles.reveal_cwd()
-- end, { desc = "Toggle into currently opened file" })


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
