return
{
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function()
    require("toggleterm").setup({

    })
    vim.keymap.set("n", "<C-`>", ":ToggleTerm direction=horizontal<CR>")
    vim.keymap.set("n", "<A-`>", ":ToggleTerm direction=float<CR>")
    vim.keymap.set("t", "<esc>", [[<C-\><C-n>]])
  end
}
