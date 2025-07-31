vim.g.mapleader = " "

vim.api.nvim_set_keymap('n', '<leader>y', '"+y', { noremap = true, silent = true, desc = 'Yank to clipboard' })
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true, silent = true, desc = 'Yank to clipboard' })
vim.api.nvim_set_keymap('n', '<leader>p', '"+p', { noremap = true, silent = true, desc = 'Paste from clipboard' })
vim.api.nvim_set_keymap('v', '<leader>p', '"+p', { noremap = true, silent = true, desc = 'Paste from clipboard' })

