return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    -- fzf implémentation en C pour plus de rapidité
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {

        -- Parce que c'est joli
        prompt_prefix = " ",
        selection_caret = " ",
        path_display = { "smart" },
        file_ignore_patterns = { ".git/", "node_modules" },
		preview = {
			treesitter = false,
		},
        mappings = {
          i = {
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
          },
        },
      },
    })

    telescope.load_extension("fzf")

    local keymap = vim.keymap.set
	local builtin = require("telescope.builtin")

	-- Main functions
    keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find a File", silent = true })
    keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Telescope Live Grep", silent = true })
    keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Search in buffers name", silent = true })
    keymap("n", "<leader>fx", "<cmd>Telescope grep_string<cr>", { desc = "Search at cursor pos", silent = true })

	-- LSP relative functions
	keymap("n", "<leader>fd", builtin.diagnostics, {desc = "Diagnostics", silent = true})
	keymap("n", "gd", builtin.lsp_definitions, {desc = "go to defenition", silent = true})
	keymap("n", "gr", builtin.lsp_references, {desc = "go to word reference", silent = true})

	-- Git relative functions
	keymap("n", "<leader>gc", builtin.git_commits,       { desc = "Git commits" })
	keymap("n", "<leader>gb", builtin.git_branches,      { desc = "Git branches" })
	keymap("n", "<leader>gs", builtin.git_status,        { desc = "Git status" })

	-- Vim relative functions
	keymap("n", "<leader>fh", builtin.help_tags,         { desc = "Plizz Help me!" })
	keymap("n", "<leader>fk", builtin.keymaps,           { desc = "Keymaps" })
	keymap("n", "<leader>fc", builtin.commands,          { desc = "Vim commands" })
	keymap("n", "<leader>ft", builtin.colorscheme,       { desc = "Change colorscheme" })

  end,
}
