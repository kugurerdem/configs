vim.opt.compatible = false -- Disable compatibility to old-time vi
vim.opt.showmatch = true -- Show matching
vim.opt.hlsearch = true -- Highlight search
vim.opt.incsearch = true -- Incremental search
vim.opt.tabstop = 4 -- Number of columns occupied by a tab
vim.opt.softtabstop = 4 -- See multiple spaces as tabstops so <BS> does the right thing
vim.opt.expandtab = true -- Converts tabs to white space
vim.opt.shiftwidth = 4 -- Width for autoindents
vim.opt.autoindent = true -- Indent a new line the same amount as the line just typed
vim.opt.smartindent = true -- Smart indent

-- Show whitespace characters
vim.opt.list = true
vim.opt.listchars = { trail = '@' }

-- Add line numbers
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.clipboard = 'unnamedplus' -- Use system clipboard
vim.opt.encoding = 'UTF-8' -- Set encoding to UTF-8
vim.opt.swapfile = false -- Disable swap file

-- Folding
vim.opt.foldmethod = 'indent'
vim.opt.foldlevelstart = 99
