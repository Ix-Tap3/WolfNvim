return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
		on_attach = function(bufnr)
			local api = require("nvim-tree.api")
			local opts = function(desc)
				return { desc = desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
			end

			api.map.on_attach.default(bufnr)
			vim.keymap.set("n", "v", api.node.open.vertical, opts("Open vertical split"))
			vim.keymap.set("n", "h", api.node.open.horizontal, opts("Open horizontal split"))
		end
	})
  end,
}

