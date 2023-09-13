return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000, --load first
  config = function()
	  -- load the colorscheme here
	  vim.cmd([[colorscheme catppuccin-macchiato]])
  end
}
