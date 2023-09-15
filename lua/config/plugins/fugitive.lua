return{
	"tpope/vim-fugitive",
	name = "Fugitive",
	config = function()
		vim.keymap.set("n","<leader>gs","<cmd>G<cr>")
	end
}
