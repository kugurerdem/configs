-- hotkeys
vim.api.nvim_set_keymap(
    'n', '<leader>c', ':set cc=80<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap(
    'n', '<leader>C', ':set cc=0<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap(
    'n', '<leader>n', ':noh<CR>', { noremap = true, silent = true })
