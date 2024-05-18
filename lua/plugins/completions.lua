return {
	{
		"hrsh7th/cmp-nvim-lsp",
	},
	{
		"onsails/lspkind.nvim",
	},
	{
		"lukas-reineke/cmp-under-comparator",
	},
	{
		"hrsh7th/cmp-buffer",
	},
	{
		"hrsh7th/cmp-path",
	},
	{
		"ray-x/cmp-treesitter",
	},
	{
		"L3MON4D3/LuaSnip",
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
		},
	},
	{
		"hrsh7th/nvim-cmp",
		config = function()
			local cmp = require("cmp")
			local lspkind = require("lspkind")
			require("luasnip.loaders.from_vscode").lazy_load()

			cmp.setup({
				experimental = {
					ghost_text = true,
				},
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
				formatting = {
					fields = { "kind", "abbr", "menu" },
					format = function(entry, vim_item)
						local kind = lspkind.cmp_format({ mode = "symbol_text", maxwidth = 50 })(entry, vim_item)
						local strings = vim.split(kind.kind, "%s", { trimempty = true })
						kind.kind = " " .. (strings[1] or "") .. " "

						local symbols = {
							buffer = "",
							nvim_lsp = "",
							luasnip = "󱔎",
							treesitter = "󰐅",
							nvim_lua = "",
						}

						local symbol = symbols[entry.source.name]
						if symbol then
							kind.menu = symbol
						else
							kind.menu = " "
						end
						return kind
					end,
				},
				window = {
					--  completion = cmp.config.window.bordered(),
					completion = {
						--winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
						winhighlight = "Normal:CmpPmenu,FloatBorder:CmpPmenuBorder,CursorLine:PmenuSel,Search:None",
						col_offset = -3,
						border = "rounded",
						scrollbar = "║",
						side_padding = 0,
					},
					documentation = cmp.config.window.bordered(),
				},
				mapping = cmp.mapping.preset.insert({
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
					["<Tab>"] = cmp.mapping.confirm({ select = true }),
					["<Enter>"] = cmp.mapping.confirm({ select = true }),
				}),

				sorting = {
					priority_weight = 1.0,
					comparators = {

						cmp.config.compare.locality,
						cmp.config.compare.recently_used,
						cmp.config.compare.score,
						require("cmp-under-comparator").under,
						cmp.config.compare.offset,
						cmp.config.compare.order,
					},
				},
				sources = cmp.config.sources({
					{ name = "nvim_lsp", priority = 8 },
					{ name = "luasnip", priority = 7 }, -- For luasnip users.
					{ name = "buffer", priority = 7 },
					{ name = "path", priority = 7 },
					{ name = "spell", keyword_length = 3, priority = 5, keyword_pattern = [[\w\+]] },
					{ name = "treesitter", priority = 4 },
				}),
			})
		end,
	},
}
