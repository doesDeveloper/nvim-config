return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				javascript = { { "prettierd", "prettier" } },
				html = { { "prettierd", "prettier" } },
				svelte = { { "prettierd", "prettier" } },
				css = { { "prettierd", "prettier" } },
				typescript = { { "prettierd", "prettier" } },
				json = { { "prettierd", "prettier" } },
			},

			format_after_save = {
				-- These options will be passed to conform.format()
				timeout_ms = 2500,
				lsp_fallback = true,
			},
		})
	end,
}
