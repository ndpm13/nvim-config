-- general keymaps

vim.api.nvim_set_keymap("n", "<leader>p", ":tabnext<CR>", { noremap = true, silent = true, desc = "Next Tab" })
vim.api.nvim_set_keymap(
	"n",
	"<leader>n",
	":vsplit<CR>:wincmd l<CR>",
	{ noremap = true, silent = true, desc = "Split Right" }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>m",
	":split<CR>:wincmd j<CR>",
	{ noremap = true, silent = true, desc = "Split Down" }
)
vim.api.nvim_set_keymap("n", "<Esc>", ":noh<CR>", { noremap = true, silent = true, desc = "Clear Search" })


-- bufferline keymaps

vim.api.nvim_set_keymap("n", "<leader>C", ":BufferLineCloseOthers<CR>", { noremap = true, silent = true, desc = "Close Other Buffers" })
