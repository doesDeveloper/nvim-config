return {
	-- "akinsho/bufferline.nvim",
	"Theyashsawarkar/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local bufferline = require("bufferline")
		bufferline.setup({
			options = {
				offsets = {
					{
						filetype = "neo-tree",
						text = "File Explorer",
						text_align = "center",
					},
				},
				diagnostics = "nvim_lsp",
				diagnostics_indicator = function(count, level, diagnostics_dict, context)
					local icon = level:match("error") and " " or " "
					return " " .. icon .. count
				end,
			},
		})
		vim.keymap.set("n", "<leader>bn", ":bn<CR>")
		vim.keymap.set("n", "<leader>bp", ":bp<CR>")
		vim.keymap.set("n", "<leader>x", ":bdelete<CR>")
	end,
}
