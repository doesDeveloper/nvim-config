vim.g.mapleader = " "
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")
require("vim-cmd")
require("neovide-conf")

function RemoveFormFeed()
	local save_cursor = vim.fn.getpos(".")
	vim.api.nvim_command("silent! 1s/\x0c//g")
	vim.fn.setpos(".", save_cursor)
end

vim.cmd([[
  autocmd BufWritePre * lua RemoveFormFeed()
]])
