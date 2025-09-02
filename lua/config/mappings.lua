vim.api.nvim_set_keymap("n", "<leader>p", ":tabnext<CR>", { noremap = true, silent = true, desc = "Next Tab" })

vim.api.nvim_set_keymap("n", "<Esc>", ":noh<CR>", { noremap = true, silent = true, desc = "Clear Search" })

vim.keymap.set("n", "<leader>a", function()
  require("harpoon"):list():add()
end, { desc = "Harpoon Add" })

vim.keymap.set("n", "<leader>h", function()
  require("harpoon").ui:toggle_quick_menu(require("harpoon"):list())
end, { desc = "Harpoon Menu" })

vim.keymap.set("n", "<C-p>", function()
  require("harpoon"):list():next({ ui_nav_wrap = true })
end, { desc = "Harpoon Next" })

vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP Hover" })
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "LSP Definition" })
vim.keymap.set("n", "er", vim.diagnostic.open_float, { desc = "LSP Diagnostics" })
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code Action" })
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "LSP Format" })

vim.keymap.set("n", "<C-n>", ":Neotree filesystem toggle float<CR>", { desc = "Toggle Neotree Filesystem" })

vim.keymap.set("n", "<C-b>", ":Neotree buffers toggle float<CR>", { desc = "Toggle Neotree Buffers" })

vim.api.nvim_set_keymap("v", "<leader>s", ":'<,'>Silicon<CR>", { noremap = true, silent = true, desc = "Silicon" })

vim.keymap.set("n", "<leader>ff", require("telescope.builtin").find_files, { desc = "Find Files" })
vim.keymap.set("n", "<leader>fg", require("telescope.builtin").live_grep, { desc = "Live Grep" })
vim.keymap.set("n", "<leader>fb", require("telescope.builtin").buffers, { desc = "Buffers" })

vim.keymap.set("n", "<C-h>", require("nvim-tmux-navigation").NvimTmuxNavigateLeft, { desc = "Tmux Navigate Left" })
vim.keymap.set("n", "<C-j>", require("nvim-tmux-navigation").NvimTmuxNavigateDown, { desc = "Tmux Navigate Down" })
vim.keymap.set("n", "<C-k>", require("nvim-tmux-navigation").NvimTmuxNavigateUp, { desc = "Tmux Navigate Up" })
vim.keymap.set("n", "<C-l>", require("nvim-tmux-navigation").NvimTmuxNavigateRight, { desc = "Tmux Navigate Right" })

vim.keymap.set("n", "zR", require("ufo").openAllFolds, { desc = "Open all folds" })
vim.keymap.set("n", "zM", require("ufo").closeAllFolds, { desc = "Close all folds" })
