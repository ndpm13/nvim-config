return {
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
			},
		})
	end,
}
