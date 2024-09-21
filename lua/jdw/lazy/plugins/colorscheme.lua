return {
    "morhetz/gruvbox",
    priority = 1000,
    init = function()
        vim.cmd("colorscheme gruvbox");
        vim.cmd("highlight Comment cterm=italic gui=italic")
    end
}
