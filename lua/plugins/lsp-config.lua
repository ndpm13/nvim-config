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
}
