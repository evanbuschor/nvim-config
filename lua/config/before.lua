vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader = " "
vim.opt.number = true
vim.opt.mouse = 'a'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.wrap = false
vim.opt.breakindent = false
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = false


-- Keybinds
-- save file (:w)
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>',{desc = 'save file'})

-- quit (:q)
vim.keymap.set("n", "<leader>q", "<cmd>quit<cr>", {desc = "quit file"})


-- window nav
vim.keymap.set("n", "<leader>h", "<cmd>wincmd h<cr>", {desc = "focus on window to the left"})
vim.keymap.set("n", "<leader>j", "<cmd>wincmd j<cr>", {desc = "focus on window to the bottom"})
vim.keymap.set("n", "<leader>k", "<cmd>wincmd k<cr>", {desc = "focus on window to the top"})
vim.keymap.set("n", "<leader>l", "<cmd>wincmd l<cr>", {desc = "focus on window to the right"})

-- keybindings (these should probably move to own file)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- number of lines before scrolling:
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"


-- fast update time:
vim.opt.updatetime = 50

-- colorcolumn
vim.opt.colorcolumn = "80"


