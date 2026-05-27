return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local keymap = vim.keymap.set
		local harpoon = require("harpoon")

		harpoon:setup()

		keymap("n", "<leader>a", function() harpoon:list():add() end, {desc = "Add current file to Harpoon list", silent = true})
		keymap("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, {desc = "Toggle harpoon list", silent = true})
	end




}
