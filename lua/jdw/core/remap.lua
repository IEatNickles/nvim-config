vim.g.mapleader = " "

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("v", "<leader>p", "\"_dP")

vim.keymap.set({"n", "v"}, "<leader>ts", ":s/	/" .. string.rep(" ", vim.api.nvim_get_option('tabstop')) .. "/g<CR>")

vim.keymap.set("v", "<C-C>", "\"+y")

vim.keymap.set({"n", "i"}, "<C-S-K>", function() vim.lsp.buf.signature_help() end)
