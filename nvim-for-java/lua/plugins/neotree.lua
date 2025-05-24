return {
			"nvim-neo-tree/neo-tree.nvim",
		  branch = "v3.x",
			dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		lazy = false, 
		opts = {},

		config = function()
			vim.keymap.set("n", "<C-e>", ":Neotree toggle position=left<CR>", {})
		end
	}


-- nvim-tree config
--[[ return {
	"nvim-tree/nvim-tree.lua",
	config = function()
		vim.keymap.set("n", "<C-e>", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle [E]xplorer" })
		require("nvim-tree").setup({
			hijack_netrw = true,
			auto_reload_on_write = true,
		})
	end
} ]]--
