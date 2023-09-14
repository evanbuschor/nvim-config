return {
	"nvim-telescope/telescope.nvim",
	name = "telescope",
	branch = '0.1.x',
	dependencies = {
		'nvim-lua/plenary.nvim',
		{"nvim-telescope/telescope-fzf-native.nvim", build = "make"},
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")
		local builtin = require('telescope.builtin')
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous, --move to prev result
						["<C-j>"] = actions.move_selection_next, --move to next result
						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- add to quick list
					}
				}
			}
		})

		telescope.load_extension("fzf")

		vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = "Fuzzy find files in CWD"})
		vim.keymap.set('n', '<leader>fg', builtin.live_grep, {desc = "Fuzzy find string using grep"})
		vim.keymap.set('n', '<leader>fr', builtin.oldfiles, {desc = "Fussy find recent files"})
	end
}
