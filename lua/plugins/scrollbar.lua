return {
	"petertriho/nvim-scrollbar",
	opts = {},
	config = function()
		require("scrollbar").setup({
			handle = {
				color = "#696969",
			},
		})
	end,
}
