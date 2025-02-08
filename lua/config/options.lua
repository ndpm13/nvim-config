vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.cursorline = true
-- vim.o.cursorcolumn = true
vim.o.scrolloff = 10
vim.o.smartindent = true
vim.o.autoindent = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.mouse = "a"
vim.o.hidden = true
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.clipboard = "unnamedplus"
vim.o.inccommand = "split"
vim.o.foldcolumn = "1"
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true

vim.opt.fillchars = { eob = " " }
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.g.mapleader = " "
vim.api.nvim_set_keymap("n", "<Space>", "", { desc = "Leader" })

vim.o.termguicolors = true
vim.o.background = "dark"
