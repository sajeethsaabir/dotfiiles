return {
	"nvim-treesitter/nvim-treesitter",

	dependencies = {
		-- ts-autolog utilizes treesitter to understand the code structure to automatically close tsx tags
		"windwp/nvim-ts-autotag"
	},
	-- When the plugin builds run the TSUpdate command to ensure all servers are installed and updated
	build = ":TSUpdate",

	config = function()
		-- Gain access to the treesitterconfig functions
		local ts_config = require("nvim-treesitter.configs")

		-- Call the treesitter  setup function with propertiesto configure our experience
		ts_config.setup({
			-- Make sure we have  vim, vimdoc, lua, java, javascript, html, css, json, tsx, markdown, inline markdown and gitignore highlighting servers
			ensure_installed = {
				"vim",
				"vimdoc",
				"lua",
				"java",
				"javascript",
				"typescript",
				"html",
				"css",
				"json",
				"tsx",
				"markdown",
				"markdown_inline",
				"gitignore",
			},
			-- Enable highlighting
			highlight = { enable = true },

			-- Enable  tsx auto closing tag creation
			autotag = { enable = true }
		})
	end
}
