return {
	"mhartington/formatter.nvim",
	init = function()
		require("formatter").setup({
			logging = true,
			log_level = vim.log.levels.WARN,
			filetype = {
				lua = {
					require("formatter.filetypes.lua").stylua,
				},
				cpp = {
					--require("formatter.filetypes.cpp").clangformat,
					function()
						local s = vim.fn.getpos("'<")[2]
						local e = vim.fn.getpos("'>")[2]

						return {
							exe = "clang-format",
							args = {
								"--lines=" .. s .. ":" .. e,
							},
							stdin = true,
						}
					end,
				},
				c = {
					require("formatter.filetypes.c").clangformat,
				},
				rust = {
					require("formatter.filetypes.rust").rustfmt,
				},
				glsl = {
					require("formatter.filetypes.c").clangformat,
				},
			},
		})
	end,
}
