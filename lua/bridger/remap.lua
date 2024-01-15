vim.g.mapleader = " "
vim.keymap.set("n", "<leader>d", vim.cmd.Ex) 


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "C-d>", "<C-d>zz")
vim.keymap.set("n", "C-u>", "<C-u>zz")

vim.keymap.set("n","n","nzzzv")
vim.keymap.set("n","N","Nzzzv")


