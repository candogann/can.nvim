-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
--
return { {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},

	cmd = 'Neotree',

	keys = {
		{ '<leader>nl', '<cmd>Neotree filesystem reveal right<CR>', desc = 'Reveal filesystem' }
	},
	opts = {
		event_handlers = {
			{
				event = "file_opened",
				handler = function(file_path)
					--auto close
					require("neo-tree").close_all()
				end
			}
		},
		filesystem = {
			hijack_netrw_behavior = "open_current",
			filtered_items = {
				visible = true,
				hide_dotfiles = false,
				hide_gitignored = false
			}
		}
	}
}
}
