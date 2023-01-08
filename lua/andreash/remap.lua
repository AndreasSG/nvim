vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Window pane management
vim.keymap.set("n", "<leader><up>", "<C-w>s")
vim.keymap.set("n", "<leader><right>", "<C-w>v")
vim.keymap.set("n", "<leader><down>", "<C-w>s")
vim.keymap.set("n", "<leader><left>", "<C-w>v")

-- Window pane movement
vim.keymap.set("n", "<S-up>", "<C-w><up>")
vim.keymap.set("n", "<S-right>", "<C-w><right>")
vim.keymap.set("n", "<S-down>", "<C-w><down>")
vim.keymap.set("n", "<S-left>", "<C-w><left>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
