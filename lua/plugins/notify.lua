return {
	"rcarriga/nvim-notify",
	config = function()
		local notify = require("notify")
		notify.setup({
			timeout = 3000,
			stages = "slide",
		})
		vim.notify = notify
		-- vim.notify("This is an error message", "error")
	end,
}
