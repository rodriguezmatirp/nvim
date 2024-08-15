return {
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,

		config = function()
			-- Set Gruvbox-specific options in Lua
			vim.g.gruvbox_contrast_dark = "hard"
			vim.g.gruvbox_contrast_light = "hard"
			vim.g.gruvbox_invert_selection = "0"

			-- Configure Gruvbox theme
			require("gruvbox").setup({
				terminal_colors = true,
				undercurl = true,
				underline = true,
				bold = true,
				italic = {
					strings = false,
					emphasis = true,
					comments = true,
					operators = false,
					folds = true,
				},
				strikethrough = true,
				invert_selection = false,
				invert_signs = false,
				invert_tabline = false,
				invert_intend_guides = false,
				inverse = true,
				contrast = "hard", -- Hard contrast mode
				palette_overrides = {},
				overrides = {},
				dim_inactive = false,
				transparent_mode = false,
			})

			-- Set Airline theme
			vim.g.airline_theme = "gruvbox8"

			-- Set Gruvbox as the colorscheme
			vim.cmd([[colorscheme gruvbox]])
		end,
	},
	{
		"mawkler/modicator.nvim",
		dependencies = "ellisonleao/gruvbox.nvim", -- Add your colorscheme plugin here
		init = function()
			-- These are required for Modicator to work
			vim.o.cursorline = true
			vim.o.number = true
			vim.o.termguicolors = true
		end,
		opts = {},
	},
}
