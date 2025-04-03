vim.filetype.add({
  extension = {
    frag = "glsl",
    vert = "glsl"
  }
})

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

vim.opt.cc = "80"
vim.opt.signcolumn = "yes"

--  function this_is_test()
--  	local foo = 7
--  	if foo == 8 then
--  		foo = 3
--  	end
--  	local foo = 7
--  end

vim.opt.listchars = {
  tab = "   ",
  trail = '.',
  extends = '>',
  precedes = '<',
  conceal = '*',
}
vim.opt.list = true

vim.opt.ignorecase = true
vim.opt.wildignorecase = true

vim.opt.hlsearch = false

vim.g.zig_fmt_autosave = 0

vim.syntax = true
