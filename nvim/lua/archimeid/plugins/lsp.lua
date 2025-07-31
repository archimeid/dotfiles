return {
  "VonHeikemen/lsp-zero.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "saadparwaiz1/cmp_luasnip",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-nvim-lua",
    "L3MON4D3/LuaSnip",
    "rafamadriz/friendly-snippets",
    { "lukas-reineke/lsp-format.nvim", config = true },
  },
  config = function()
    local lsp_zero = require('lsp-zero')

    lsp_zero.on_attach(function(client, bufnr)
      -- see :help lsp-zero-keybindings
      -- to learn the available actions
      lsp_zero.default_keymaps({buffer = bufnr})
    end)

    local cmp = require('cmp')

    cmp.setup({
      mapping = {
        ['<Tab>'] = cmp.mapping.confirm({select = true}),
      }
    })

    -- to learn how to use mason.nvim with lsp-zero
    -- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guides/integrate-with-mason-nvim.md
    require('mason').setup({})
    require('mason-lspconfig').setup({
      ensure_installed = {},
      handlers = {
        lsp_zero.default_setup,
      },
    })

    require('lspconfig').lua_ls.setup(lsp_zero.nvim_lua_ls())
  end
}
