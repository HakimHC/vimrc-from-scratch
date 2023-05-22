vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")

vim.keymap.set("n", "<leader>n", vim.cmd.enew)

vim.keymap.set("n", "<leader>br", vim.cmd.bnext)

vim.keymap.set("n", "<leader>bw", vim.cmd.bprevious)

vim.keymap.set("v", "<leader>l", "c\"\"<ESC>hpi")
