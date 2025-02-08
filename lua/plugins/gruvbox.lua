return {
	"ellisonleao/gruvbox.nvim",
	name = "gruvbox",
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("gruvbox")

		vim.o.termguicolors = true
		vim.o.background = "dark"

		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		vim.cmd("highlight comment guifg=#928374")
	end,
}
