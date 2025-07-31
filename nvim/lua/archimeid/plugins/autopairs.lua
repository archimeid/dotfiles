return {
  {
    'windwp/nvim-autopairs', -- plugin 1
    event = { 'InsertEnter' },
    config = function()
      local npairs_status_ok, npairs = pcall(require, 'nvim-autopairs')

      npairs.setup({})

    end
  },
  {
    'windwp/nvim-ts-autotag', -- plugin 2
    event = { 'InsertEnter' },

    config = function()
      local autotag_status_ok, autotag = pcall(require, 'nvim-ts-autotag')

      if not autotag_status_ok then
        return
      end

      autotag.setup({})
    end
  }
}

