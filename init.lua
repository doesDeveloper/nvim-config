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
vim.g.mapleader = " "
vim.keymap.set("n", "<C-s>", ":w<CR>")

require("lazy").setup("plugins")
require("vim-cmd")
require("neovide-conf")
vim.cmd("colorscheme catppuccin")
vim.opt.termguicolors = true

vim.keymap.set("n", "<leader>sv", ":source $MYVIMRC<CR>")
vim.keymap.set("n", "<leader>sc", ":source %<CR>")

vim.cmd("highlight! CmpItemAbbrDeprecated guibg=NONE gui=strikethrough guifg=#808080")
vim.cmd("highlight! CmpItemAbbrMatch guibg=NONE guifg=#569CD6")
vim.cmd("highlight! CmpItemAbbrMatchFuzzy guibg=NONE guifg=#569CD6")
vim.cmd("highlight! CmpItemKindVariable guibg=NONE guifg=#9CDCFE")
vim.cmd("highlight! CmpItemKindInterface guibg=NONE guifg=#9CDCFE")
vim.cmd("highlight! CmpItemKindText guibg=NONE guifg=#9CDCFE")
vim.cmd("highlight! CmpItemKindFunction guibg=NONE guifg=#C586C0")
vim.cmd("highlight! CmpItemKindMethod guibg=NONE guifg=#C586C0")
vim.cmd("highlight! CmpItemKindKeyword guibg=NONE guifg=#D4D4D4")
