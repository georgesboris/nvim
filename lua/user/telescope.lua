local telescope = require("telescope")

telescope.setup {
	file_browser = {
		hijack_netrw = true,
	},
}

telescope.load_extension('fzf')
telescope.load_extension('file_browser')
telescope.load_extension('project')
