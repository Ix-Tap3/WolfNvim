local	opt = vim.opt

-- Line Numbers
opt.relativenumber = true
opt.number = true

-- tabs and indent
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = false
opt.autoindent = true

-- Search options
opt.ignorecase = true
opt.smartcase = true -- Disable ignorecase when using Uppercase
opt.hlsearch = true

--backspace
opt.backspace = ¨indent,eol,start¨

-- Skin
opt.cursorline = true
opt.termguicolors = true
opt.background = ¨dark¨
opt.signcolumn = ¨yes¨
opt.list = true
opt.listchars:append({ nbsp = "␣", trail = "•", precedes = "«", extends = "»", tab = "> " })

-- clipboard
opt.clipboard = ¨unnamedplus¨

-- split
opt.splitright = true
opt.splitbelow = true

-- Global options
opt.swapfile = false
opt.undofile = true

opt.iskeyword:append("-")


