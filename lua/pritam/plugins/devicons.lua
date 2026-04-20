return {
	"echasnovski/mini.icons",
	lazy = true,
	opts = {
		style = "glyph", -- use glyph icons (requires Nerd Font)
		-- override or add specific icons here if needed
		-- file = { [".go"] = { glyph = "", hl = "MiniIconsBlue" } },
	},
	init = function()
		-- Make mini.icons act as a drop-in replacement for nvim-web-devicons
		-- so plugins like nvim-tree, lualine, etc. all use mini.icons
		package.preload["nvim-web-devicons"] = function()
			require("mini.icons").mock_nvim_web_devicons()
			return package.loaded["nvim-web-devicons"]
		end
	end,
}
