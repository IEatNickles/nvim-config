return {
    "stevearc/oil.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    config = function()
        require("oil").setup({
            keymaps = {
                ["<C-h>"] = false,
                ["<C-c>"] = false
            },
            view_options = {
                show_hidden = true
            }
        })
        vim.keymap.set("n", "-", "<CMD>Oil<CR>")
    end
}
