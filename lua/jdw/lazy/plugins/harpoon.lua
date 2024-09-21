return {
    "ThePrimeagen/harpoon",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    config = function ()
        require("harpoon").setup();
        vim.keymap.set("n", "<leader>m", require("harpoon.mark").add_file)

        local ui = require("harpoon.ui");
        vim.keymap.set("n", "<leader>hp", ui.toggle_quick_menu)

        vim.keymap.set("n", "<C-h>", function() ui.nav_file(4) end)
        vim.keymap.set("n", "<C-j>", function() ui.nav_file(1) end)
        vim.keymap.set("n", "<C-k>", function() ui.nav_file(2) end)
        vim.keymap.set("n", "<C-l>", function() ui.nav_file(3) end)
    end
}
