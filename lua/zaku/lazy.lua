require("zaku.remap")

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Adds lazy.nvim (after bootstrap)
require("lazy").setup({
  {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000, --load first
  config = function()
	  -- load the colorscheme here
	  vim.cmd([[colorscheme catppuccin-macchiato]])
  end
  },
  {
	"nvim-telescope/telescope.nvim",
	name = "telescope",
	tag = '0.1.2',
	dependencies = {'nvim-lua/plenary.nvim'},
	config = function()
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
		vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
		vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
		vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
	end
  },
  {
	"nvim-treesitter/nvim-treesitter",
	name = "Treesitter",
	config = function()
		vim.cmd([[TSUpdate]])
	end

  },
  {
	"tpope/vim-fugitive",
	name = "Fugitive"
  },
  {
	"mbbill/undotree",
	name = "UndoTree"
  }--,
--  {
--	  "preservim/nerdtree",
--	  name = "NerdTree"
-- }
})



