-- By MrJakob YT
return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}


-- The actual which-key config by unknown kader YT
--[[ return {
    'folke/which-key.nvim',
    event = 'VimEnter',
    config = function()
        -- gain access to the which key plugin
        local which_key = require('which-key')

        -- call the setup function with default properties
        which_key.setup()

        -- Register prefixes for the different key mappings we have setup previously
        which_key.register({
            ['<leader>/'] = {name = "Comments", _ = 'which_key_ignore'},
            ['<leader>c'] = { name = '[C]ode', _ = 'which_key_ignore' },
            ['<leader>d'] = {name = '[D]ebug' , _ = 'which_key_ignore' },
            ['<leader>e'] = {name = '[E]xplorer', _ = 'which_key_ignore'},
            ['<leader>f'] = { name = '[F]ind', _ = 'which_key_ignore' },
            ['<leader>g'] = { name = '[G]it', _ = 'which_key_ignore' },
            ['<leader>J'] = { name = '[J]ava', _ = 'which_key_ignore' },
            ['<leader>w'] = {name = '[W]indow', _ = 'which_key_ignore'}
        })
    end
} ]]--
