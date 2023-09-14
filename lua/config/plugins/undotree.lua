return{
	"mbbill/undotree",
	name = "UndoTree",
	config = function()
		vim.keymap.set("n", "<leader>u", "<cmd>UndotreeToggle<Cr>")
	end
}
