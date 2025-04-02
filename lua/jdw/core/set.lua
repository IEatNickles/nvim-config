vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = false

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.termguicolors = true

vim.o.scrolloff = 12

vim.opt.cc = "90"
vim.opt.signcolumn = "yes"

vim.opt.listchars = {
  -- multispace = string.rep("-", vim.api.nvim_get_option('tabstop') - 1) .. ">",
  tab = "|->",
  trail = ".",
  extends = ">",
  precedes = "<"
}
vim.opt.list = true

vim.opt.ignorecase = true
vim.opt.wildignorecase = true

vim.opt.hlsearch = false

vim.g.zig_fmt_autosave = 0
