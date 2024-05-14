return {
	"rcarriga/nvim-notify",
	config = function()
		local notify = require("notify")
		vim.notify = notify
		notify.setup({
			timeout = 3000,
			stages = "slide",
		})
		-- vim.notify("This is an error message", "error")
	end,
}
