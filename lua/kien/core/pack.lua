vim.pack.add({
  "https://github.com/bluz71/vim-moonfly-colors",
  -- "https://github.com/nvim-mini/mini.nvim",
  --
  "https://github.com/folke/snacks.nvim",

  "https://github.com/saghen/blink.lib",
  "https://github.com/saghen/blink.cmp",

  { src = "https://github.com/nvim-treesitter/nvim-treesitter", branch = "main" },

  "https://github.com/windwp/nvim-autopairs",

  "https://github.com/stevearc/conform.nvim",
  "https://github.com/nvim-lua/plenary.nvim",

  "https://github.com/nvim-tree/nvim-web-devicons",
  "https://github.com/nvim-lualine/lualine.nvim",

  "https://github.com/neovim/nvim-lspconfig" ,
  "https://github.com/mason-org/mason.nvim",
  "https://github.com/mason-org/mason-lspconfig.nvim",
  "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim"
})

require("kien.plugins.snacks")

require("kien.plugins.lsp.mason")
require("kien.plugins.lsp.lspconfig")

--
--
-- vim.keymap.set("n", "<leader>xx", function()
  -- 	MiniExtra.pickers.diagnostic()
  -- end, { desc = "Mini Picker Diagnostics" })
  -- vim.keymap.set("n", "<leader>pk", function()
    -- 	MiniExtra.pickers.keymaps()
    -- end, { desc = "Search keymaps" })

    -- local cmp = require("blink.cmp")
    -- cmp.build():pwait()
    -- cmp.setup({
      -- 	keymap = { preset = "enter" },
      -- 	completion = {
        -- 		documentation = { auto_show = true },
        -- 		accept = { auto_brackets = { enabled = false } },
        -- 		list = { selection = { preselect = false, auto_insert = true } },
        -- 	},
        -- 	cmdline = { enabled = false },
        -- })

        -- require("treesitter")
        -- require("lsp")

        -- require("nvim-autopairs").setup({
          -- 	fast_wrap = {},
          -- 	disable_filetype = { "TelescopePrompt", "vim" },
          -- })

          -- require("conform-format")
