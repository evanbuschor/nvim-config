return {
	"nvim-treesitter/nvim-treesitter",
	name = "Treesitter",
	config = function()
		vim.cmd([[TSUpdate]])
	end

  }
