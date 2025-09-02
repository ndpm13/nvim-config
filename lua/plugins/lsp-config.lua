return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"rust_analyzer",
					"texlab",
					"svelte",
					"bashls",
					"cssls",
					"html",
					"vtsls",
					"ts_ls",
					"clangd",
					"tailwindcss",
					"gopls",
					"hls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			local servers = {
				"lua_ls",
				"texlab",
				"svelte",
				"bashls",
				"cssls",
				"html",
				"vtsls",
				"ts_ls",
				"clangd",
				"clangd",
				"tailwindcss",
				"gopls",
				"hls",
			}

			for _, lsp in ipairs(servers) do
				lspconfig[lsp].setup({
					capabilities = capabilities,
				})
			end
		end,
	},
	{
		"nvimtools/none-ls.nvim",
		config = function()
			local null_ls = require("null-ls")

			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.stylua,
					null_ls.builtins.formatting.prettier,
					null_ls.builtins.formatting.markdownlint,
					null_ls.builtins.formatting.sql_formatter,
					null_ls.builtins.formatting.bibclean,
					null_ls.builtins.formatting.gofumpt,
				},
			})
		end,
	},
	{
		"luckasRanarison/tailwind-tools.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter" },
		opts = {}, -- your configuration
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local configs = require("nvim-treesitter.configs")
			configs.setup({
				sync_install = false,

				auto_install = true,

				highlight = {
					enable = true,
					additional_vim_regex_highlighting = false,
				},
				indent = { enable = true },
			})
		end,
	},
}
