return {
  'nvim-telescope/telescope.nvim', tag = '0.1.5',
  keys = {
    {
      "<leader>ff",
      function() require("telescope.builtin").find_files() end,
      desc = "Find Files",
    },
    {
      "<leader>fg",
      function() require("telescope.builtin").live_grep() end,
      desc = "Live grep",
    },
    {
      "<leader>fb",
      function() require("telescope.builtin").buffers() end,
      desc = "Find Buffers",
    },
    {
      "<leader>fh",
      function() require("telescope.builtin").help_tags() end,
      desc = "Find Help Tags",
    },
    {
      "<leader>fs",
      function()
        require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ") })
      end,
      desc = "Find Help Tags",
    },
  },
  dependencies = { 'nvim-lua/plenary.nvim' }
}
