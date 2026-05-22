vim.g.mapleader = " "

local keymap = vim.keymap.set

keymap("n", "-", vim.cmd.Ex, {desc = "return to file explorator"})
keymap("n", "<leader>pv", vim.cmd.Ex)
