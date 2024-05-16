return {
	"mbbill/undotree",
	config = function()
		-- let g:undotree_WindowLayout  ="Style 1"
		vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
		vim.g.undotree_WindowLayout = 3
		vim.g.undotree_DiffAutoOpen = 0
	end,
}
