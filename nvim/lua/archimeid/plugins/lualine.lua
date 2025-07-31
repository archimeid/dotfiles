return {
  'nvim-lualine/lualine.nvim',
  opts = {
    theme = "catppuccin",
    globalstatus = true,
    extensions = {
      "lazy",
      "neo-tree"
    }
  },
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  }
}
