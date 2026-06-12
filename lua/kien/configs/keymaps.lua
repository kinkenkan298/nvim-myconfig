vim.g.mapleader = " "
local opts = { noremap = true, silent = true }

vim.keymap.set("x", "p", [["_dP]], {desc = "Paste over selection without losing yanked text"})

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete without yanking" })

vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "<C-c>", ":nohl<CR>", { desc = "Clear search highlighting", silent = true })

vim.keymap.set("i", "<C-s>", ":w<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "moves lines down in visual selection" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "moves lines up in visual selection" })

vim.keymap.set("n", "<leader>re", "<cmd>restart<cr>", { desc = "Restart config :restart)" })

vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines without moving cursor" })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "move down in buffer with cursor centered" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "move up in buffer with cursor centered" })

vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result cursor centered" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search result cursor centered" })

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replace word cursor is on globally" })

for _, mode in ipairs { "i", "v", "n", "x" } do
  vim.keymap.set(mode, "<S-Down>", "<cmd>t.<cr>", opts)
  vim.keymap.set(mode, "<S-Up>", "<cmd>t -1<cr>", opts)
  vim.keymap.set(mode, "<C-s>", "<cmd>silent! w<cr>", opts)
end


vim.keymap.set("n", "q", "<cmd>q<cr>", opts)
vim.keymap.set({ "n", "i" }, "<leader>q", "<cmd>q<cr>", opts)

