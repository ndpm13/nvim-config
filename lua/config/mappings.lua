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

vim.api.nvim_set_keymap(
	"n",
	"<leader>C",
	":BufferLineCloseOthers<CR>",
	{ noremap = true, silent = true, desc = "Close Other Buffers" }
)

-- nvim-dap keymaps

vim.keymap.set("n", "<Leader>db", require("dap").toggle_breakpoint, { desc = "DAP Toggle Breakpoint" })
vim.keymap.set("n", "<Leader>dc", require("dap").continue, { desc = "DAP Continue" })
vim.keymap.set("n", "<Leader>dsv", require("dap").step_over, { desc = "DAP Step Over" })
vim.keymap.set("n", "<Leader>dsi", require("dap").step_into, { desc = "DAP Step Into" })
vim.keymap.set("n", "<Leader>dso", require("dap").step_out, { desc = "DAP Step Out" })

-- lsp keymaps

vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP Hover" })
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "LSP Definition" })
vim.keymap.set("n", "er", vim.diagnostic.open_float, { desc = "LSP Diagnostics" })
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code Action" })
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "LSP Format" })
