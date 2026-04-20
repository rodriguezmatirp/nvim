-- Uncomment the vim.cmd line in ONE block at a time to switch colorschemes

return {
	-- 1. ellisonleao/gruvbox.nvim (current)
	-- {
	-- 	"ellisonleao/gruvbox.nvim",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("gruvbox").setup({
	-- 			contrast = "hard",
	-- 			bold = true,
	-- 			italic = {
	-- 				strings = true,
	-- 				emphasis = true,
	-- 				comments = true,
	-- 				operators = false,
	-- 				folds = true,
	-- 			},
	-- 			transparent_mode = false,
	-- 		})
	-- 		vim.cmd("colorscheme gruvbox")
	-- 	end,
	-- },
	--
	-- 2. sainnhe/gruvbox-material — softer palette, most options
	-- {
	-- 	"sainnhe/gruvbox-material",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.g.gruvbox_material_background = "hard" -- "hard", "medium", "soft"
	-- 		vim.g.gruvbox_material_foreground = "original" -- "original", "mix", "material"
	-- 		vim.g.gruvbox_material_enable_italic = 1
	-- 		vim.g.gruvbox_material_enable_bold = 1
	-- 		vim.cmd("colorscheme gruvbox-material")
	-- 	end,
	-- },
	--
	-- -- 3. luisiacc/gruvbox-baby — warmer tones, treesitter-focused
	-- {
	-- 	"luisiacc/gruvbox-baby",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.g.gruvbox_baby_background_color = "dark" -- "dark", "medium"
	-- 		vim.g.gruvbox_baby_use_original_palette = 0
	-- 		vim.cmd("colorscheme gruvbox-baby")
	-- 	end,
	-- },
	--
	-- -- 4. eddyekofo94/gruvbox-flat.nvim — darker bg, flat style
	{
		"eddyekofo94/gruvbox-flat.nvim",
		priority = 1000,
		config = function()
			vim.g.gruvbox_flat_style = "dark" -- "dark", "darker", "cool", "deep", "warm", "warmer"
			vim.cmd("colorscheme gruvbox-flat")
		end,
	},

	{
		"mawkler/modicator.nvim",
		init = function()
			vim.o.cursorline = true
			vim.o.number = true
			vim.o.termguicolors = true
		end,
		opts = {},
	},
}
