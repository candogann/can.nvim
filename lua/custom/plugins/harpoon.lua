return {

	"ThePrimeagen/harpoon",
	branch = 'harpoon2',
	dependencies = {

		'nvim-lua/plenary.nvim',
	},
	config = function()
		require('harpoon'):setup()
	end,
	keys = {

		{ "<leader>A", function() require("harpoon"):list():add() end, desc = "harpoon file", },

		{
			'<leader>hl',
			function()
				local harpoon = require('harpoon')
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end,
			desc = 'Open harpoon list.'
		},
		{
			'<leader>1',
			function()
				require("harpoon"):list():select(1)
			end,
			desc = 'Open harpoon 1.'
		},
		{
			'<leader>2',
			function()
				require("harpoon"):list():select(2)
			end,
			desc = 'Open harpoon 2.'
		},
		{
			'<leader>3',
			function()
				require("harpoon"):list():select(3)
			end,
			desc = 'Open harpoon 3.'
		},
		{
			'<leader>4',
			function()
				require("harpoon"):list():select(4)
			end,
			desc = 'Open harpoon 4.'
		},
	},
	opts = {
	}
}
