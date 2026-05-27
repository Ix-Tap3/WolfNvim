vim.g.mapleader = " "

local keymap = vim.keymap.set

-- Vim keymap
keymap("n", "-", vim.cmd.Ex, {desc = "return to file explorator"})
keymap("n", "<leader>pv", vim.cmd.Ex)

-- Bufferline keymap
keymap("n", "<leader>bo", "<cmd>BufferLineCloseOthers<CR>", {desc = "Close all other visible buffers"})
keymap("n", "<leader>br", "<cmd>BufferLineCloseRight<CR>", {desc = "Close all visible buffers to the right of the current buffer"})
keymap("n", "<leader>bl", "<cmd>BufferLineCloseLeft<CR>", {desc = "Close all visible buffers to the left of the current buffer"})
keymap("n", "<leader>bp", "<cmd>BufferLinePickClose<CR>", {desc = "Pick one buffer to close", silent = true})
keymap("n", "gb", "<cmd>BufferLinePick<CR>", {desc = "Pick one specific buffer", silent = true})
keymap("n", "<leader>1", "<cmd>BufferLineGoToBuffer 1<CR>", {desc = "Go to buffer 1", silent = true})
keymap("n", "<leader>2", "<cmd>BufferLineGoToBuffer 2<CR>", {desc = "Go to buffer 2", silent = true})
keymap("n", "<leader>3", "<cmd>BufferLineGoToBuffer 3<CR>", {desc = "Go to buffer 3", silent = true})
keymap("n", "<leader>4", "<cmd>BufferLineGoToBuffer 4<CR>", {desc = "Go to buffer 4", silent = true})
keymap("n", "<leader>5", "<cmd>BufferLineGoToBuffer 5<CR>", {desc = "Go to buffer 5", silent = true})
keymap("n", "<leader>6", "<cmd>BufferLineGoToBuffer 6<CR>", {desc = "Go to buffer 6", silent = true})
keymap("n", "<leader>7", "<cmd>BufferLineGoToBuffer 7<CR>", {desc = "Go to buffer 7", silent = true})
keymap("n", "<leader>8", "<cmd>BufferLineGoToBuffer 8<CR>", {desc = "Go to buffer 8", silent = true})
keymap("n", "<leader>9", "<cmd>BufferLineGoToBuffer 9<CR>", {desc = "Go to buffer 9", silent = true})
keymap("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", {desc = "Go to next Buffer", silent = true})
keymap("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", {desc = "Go to prev Buffer", silent = true})
keymap("n", "<leader>mn", "<cmd>BufferLineMoveNext<CR>", {desc = "Move buffer to the right", silent = true})
keymap("n", "<leader>mp", "<cmd>BufferLineMovePrev<CR>", {desc = "Move buffer to the left", silent = true})
