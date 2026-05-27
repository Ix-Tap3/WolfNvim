vim.g.mapleader = " "

local keymap = vim.keymap.set

-- Vim keymap
keymap("n", "-", vim.cmd.Ex, {desc = "return to file explorator"})
keymap("n", "<leader>pv", vim.cmd.Ex, {desc = "return to file explorator"})
keymap("n", "<C-h>", "<C-w>h", {desc = "Focus to the left Window", silent = true})
keymap("n", "<C-l>", "<C-w>l", {desc = "Focus to the right Window", silent = true})
keymap("n", "<C-j>", "<C-w>j", {desc = "Focus to the bottom Window", silent = true})
keymap("n", "C-k>", "C-w>k", {desc = "Focus to the top Window", silent = true})
keymap("n", "<C-s>", "<cmd>w<CR>", {desc = "Save current file", silent = true})

-- Bufferline keymap
keymap("n", "<leader>bo", "<cmd>BufferLineCloseOthers<CR>", {desc = "Close all other visible buffers", silent = true})
keymap("n", "<leader>br", "<cmd>BufferLineCloseRight<CR>", {desc = "Close all visible buffers to the right of the current buffer", silent = true})
keymap("n", "<leader>bl", "<cmd>BufferLineCloseLeft<CR>", {desc = "Close all visible buffers to the left of the current buffer", silent = true})
keymap("n", "<leader>bp", "<cmd>BufferLinePickClose<CR>", {desc = "Pick one buffer to close", silent = true})
keymap("n", "<leader>bc", "<cmd>bd<CR>", {desc = "Close active buffer", silent = true})
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

-- NvimTree keymap
keymap("n", "<leader>e", "<cmd>NvimTreeFindFileToggle<CR>", {desc = "Open/Close file explorator", silent = true})
keymap("n", "<leader>ef", "<cmd>NvimTreeFindFile<CR>", {desc = "Find current file in tree", silent = true})
keymap("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", {desc = "Refresh NvimTree"})
-- for NvimTree specific keymaping go to lua/plugins/nvim-tree.lua
