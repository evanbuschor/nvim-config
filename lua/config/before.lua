vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader = " "
vim.opt.number = true
vim.opt.mouse = 'a'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
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
