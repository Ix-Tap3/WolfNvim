return {
  "Diogo-ss/42-header.nvim",
  cmd = { "Stdheader" },
  keys = { "<leader>11" },
  opts = {
    default_map = false, -- Default mapping <F1> in normal mode.
    auto_update = true, -- Update header when saving.
    user = "test", -- Your user.
    mail = "pcaplat@42angouleme.fr", -- Your mail.
    -- add other options.
  },
  config = function(_, opts)
    require("42header").setup(opts)
	vim.keymap.set("n", "<leader>11", "<cmd>Stdheader<CR>", {desc = "42 HEADER"})
  end,
}
