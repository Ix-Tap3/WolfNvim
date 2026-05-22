vim.g.mapleader = " "

local keymap = vim.keymap.set

keymap("n", "-", vim.cmd.Ex)
keymap("n", "<leader>pv", vim.cmd.Ex)
