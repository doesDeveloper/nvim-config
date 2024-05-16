vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")

vim.keymap.set("n", "<leader>sv", ":source $MYVIMRC<CR>")
vim.keymap.set("n", "<leader>sc", ":source %<CR>")
vim.keymap.set("n", "<leader>p", '"*p<CR>')
vim.keymap.set("v", "<leader>y", '"*y<CR>')
vim.keymap.set("n", "<leader>P", '"*P<CR>')
vim.keymap.set({ "n", "i" }, "<C-s>", vim.cmd.w)

vim.opt.termguicolors = true
vim.opt.undofile = true
vim.opt.termguicolors = true
vim.opt.formatoptions:remove("o")

vim.cmd("colorscheme catppuccin")

vim.cmd("highlight! CmpItemAbbrDeprecated guibg=NONE gui=strikethrough guifg=#808080")
vim.cmd("highlight! CmpItemAbbrMatch guibg=NONE guifg=#569CD6")
vim.cmd("highlight! CmpItemAbbrMatchFuzzy guibg=NONE guifg=#569CD6")
vim.cmd("highlight! CmpItemKindVariable guibg=NONE guifg=#9CDCFE")
vim.cmd("highlight! CmpItemKindInterface guibg=NONE guifg=#9CDCFE")
vim.cmd("highlight! CmpItemKindText guibg=NONE guifg=#9CDCFE")
vim.cmd("highlight! CmpItemKindFunction guibg=NONE guifg=#C586C0")
vim.cmd("highlight! CmpItemKindMethod guibg=NONE guifg=#C586C0")
vim.cmd("highlight! CmpItemKindKeyword guibg=NONE guifg=#D4D4D4")
