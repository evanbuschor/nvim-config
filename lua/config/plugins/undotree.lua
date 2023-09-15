return {
	"mbbill/undotree",
	name = "UndoTree",
	config = function()
		vim.keymap.set("n", "<leader>u", "<cmd>UndotreeToggle<Cr>")
		vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
		vim.opt.undofile = true
	end
}
