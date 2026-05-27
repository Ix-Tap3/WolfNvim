return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	opts = {
		options = {
			separator_style = "slant",
			offsets = { { filetype = "NvimTree", text = "", padding = 1, text_align = "center" } },
		},
	},
	config = function()
		local	bufferline = require('bufferline')
		bufferline.setup {
			options = {
				style_preset = bufferline.style_preset.default,
				mode = "buffers",
				themable = true,
				numbers = "ordinal",
				max_name_length = 18,
				max_prefix_length = 15,
				tab_size = 18,
				diagnostics = "nvim_lsp",
				diagnostics_update_on_event = true,
				diagnostics_indicator = function(count, level, diagnostics_dict, context)
					local s = " "
					for e, n in pairs(diagnostics_dict) do
						local sym = e == "error" and " "
						or (e == "warning" and " " or " ")
						s = s .. n .. sym
					end
					return s
				end,
				truncate_names = true,
			},
		}
end,
}
