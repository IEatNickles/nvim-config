return {
  'jakemason/ouroboros',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function ()
      vim.keymap.set("n", "<leader>gh", ":Ouroboros<CR>")
  end
}
