return {
  'nvim-telescope/telescope.nvim', tag = '0.1.5',
  branch = '0.1.x',
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    local builtin = require("telescope.builtin")

    telescope.setup({
      defaults = {
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-j>"] = actions.move_selection_next,
          }
        },
      },
      pickers = {
        find_files = {
          theme = "ivy"
        },
        buffers = {
          theme = "ivy"
        },
      },
      extentions = {
        fzf = {}
      },
    })

    telescope.load_extension("fzf")

    vim.keymap.set("n", "<leader>ff", builtin.find_files)
    vim.keymap.set("n", "<leader>fh", builtin.help_tags)
    vim.keymap.set("n", "<leader>fl", builtin.live_grep)
    vim.keymap.set("n", "<leader>en", function()
      builtin.find_files({
        cwd = vim.fn.stdpath("config")
      })
    end)
  end
}
