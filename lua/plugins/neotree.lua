return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			source_selector = {
				winbar = false,
				statusline = false,
			},
			filesystem = {
				window = {
					position = "float",
				},
				filtered_items = {
					visible = true,
					hide_dotfiles = true,
					hide_gitignored = true,
				},
			},
		})
	end,
}
