return {
	"stevearc/conform.nvim",
	init = function()
    local conform = require("conform")
    conform.setup({
      formatters_by_ft = {
        lua = { "stylua" },
        cpp = { "clang-format" },
        -- Conform will run multiple formatters sequentially
        python = { "isort", "black" },
        -- You can customize some of the format options for the filetype (:help conform.format)
        rust = { "rustfmt", lsp_format = "fallback" },
        -- Conform will run the first available formatter
        javascript = { "prettierd", "prettier", stop_after_first = true },
      },
    })

    -- vim.keymap.set({ "v", "n" }, "<leader>f", ":lua require('conform').format({ async = true }, nil)<CR>")
    vim.keymap.set("v", "=", function()
      require("conform").format({ async = true }, function(err)
        if not err then
          local mode = vim.api.nvim_get_mode().mode
          if vim.startswith(string.lower(mode), "v") then
            vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "n", true)
          end
        end
      end)
    end, { desc = "Format selection" })
    vim.keymap.set("n", "<leader>fc", function()
      require("conform").format({ async = true }, nil)
    end, { desc = "Format code" })
	end,
}
