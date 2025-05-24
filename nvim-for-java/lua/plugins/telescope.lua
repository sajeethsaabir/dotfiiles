return {
	{
	"nvim-telescope/telescope.nvim",
	-- pull the specific version of  the plugin
	-- tag = "0.1.6",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		-- Get access to the telescope built-in functions
		local builtin = require("telescope.builtin")

		-- Keymaps
		-- Set <leader> + f + f to search for files by their names
		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "[F]ind [F]iles" })

		-- Set <leader> + f + g to search for files based on the text inside of them
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "[F]ind by [G]rep" })

		-- Set <leader> + f + d to search Code  Diagnostics in the current project
		vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "[F]ind [D]iagnostics" })

		-- Set <leader> + f + r  to resume the previous search
		vim.keymap.set("n", "<leader>fr", builtin.resume, { desc = "[F]inder [R]esume " })

		-- Set <leader> + f + . to search for recent files
		vim.keymap.set("n", "<leader>f.", builtin.oldfiles, { desc = "[F]ind recent [F]iles ('.' for repeat)" })

		-- Set <leader> + f + b  to search Open Buffers
		vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "[F]ind existing [B]uffers" })
	end
},
{
	"nvim-telescope/telescope-ui-select.nvim",
	config = function()
		-- Get access to telescope navigation functions
		local actions = require("telescope.actions")

		require("telescope").setup({
			-- Use ui-select dropdown as our UI
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown {}

				}
			},
			-- Set keymaps to navigate through items in the telescopeio
			mappings = {
				i = {
					-- Use <C-n>  to go to the next option
					["<C-n>"] = actions.cycle_history_next,

					-- Use <C-p>  to go to the previous option
					["<C-p>"] = actions.cycle_history_prev,


					-- Use <C-j> to go to the next preview
					["<C-j>"] = actions.move_selection_next,

					-- Use <C-k> to go to the next preview
					["<C-k>"] = actions.move_selection_previous,


				}
			},
			-- Load the ui-select extension
			require("telescope").load_extension("ui-select")
		})
	end
}
}
