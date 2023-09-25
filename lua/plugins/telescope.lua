local M = {
	'nvim-telescope/telescope.nvim',
	branch = '0.1.x',
	dependencies = {
		'nvim-lua/plenary.nvim',
		{
			'nvim-telescope/telescope-fzf-native.nvim',
			build = 'make',
			cond = function()
				return vim.fn.executable 'make' == 1
			end,
		},
	},
	opts = { },
	keys = {
        { 
            "<leader>?", 
            "<cmd>lua require'telescope.builtin'.oldfiles(require('telescope.themes').get_ivy({}))<CR>", 
            desc = "[?] Find recently opened files" 
        },
        { 
            "<leader><space>", 
            "<cmd>lua require'telescope.builtin'.buffers(require('telescope.themes').get_ivy({ previewer = false }))<CR>", 
            desc = "[ ] Find existing buffers" 
        },
        { 
            "<leader>sf", 
            "<cmd>lua require'telescope.builtin'.find_files{}<CR>", 
            desc = "[S]earch [F]iles" 
        },
        { 
            "<leader>sh", 
            "<cmd>lua require'telescope.builtin'.help_tags{}<CR>", 
            desc = "[S]earch [H]elp" 
        },
        { 
            "<leader>sw", 
            "<cmd>lua require'telescope.builtin'.grep_string{}<CR>", 
            desc = "[S]earch current [W]ord" 
        },
        { 
            "<leader>sg", 
            "<cmd>lua require'telescope.builtin'.live_grep{}<CR>", 
            desc = "[S]earch by [G]rep" 
        },
        { 
            "<leader>sd", 
            "<cmd>lua require'telescope.builtin'.diagnostics{}<CR>", 
            desc = "[S]earch [D]iagnostics" 
        },
        { 
            "<leader>sr", 
            "<cmd>lua require'telescope.builtin'.resume{}<CR>", 
            desc = "[S]earch [R]esume" 
        },
	}
}

function M.config()
	local telescope = require 'telescope'

	-- Enable telescope fzf native, if installed
	pcall(telescope.load_extension, 'fzf')
end

return M

