return {
  "morhetz/gruvbox",
  priority = 1000,
  init = function()
    vim.cmd("colorscheme gruvbox");
    vim.cmd("highlight Comment cterm=italic gui=italic")
    vim.cmd("highlight! link Delimiter GruvboxOrange")
    vim.cmd("highlight! link Operator GruvboxGreen")
    vim.cmd("highlight! link @variable GruvboxBlue")
    vim.cmd("highlight! link @lsp.type.property GruvboxBlueBold")
    vim.cmd("highlight! link @type GruvboxAquaBold")
    vim.cmd("highlight! link @module GruvboxAquaSign")
  end
}
