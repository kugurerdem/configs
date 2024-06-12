-- Autocommands
vim.api.nvim_create_autocmd('FileType', {
    pattern = 'javascript',
    command = 'nnoremap <buffer> <C-n> :!node %<CR>',
})
vim.api.nvim_create_autocmd('FileType', {
    pattern = 'javascript',
    command = 'nnoremap <buffer> <C-l> :!npx eslint %<CR>',
})

vim.api.nvim_create_autocmd('FileType', {
    pattern = 'haskell',
    command = 'nnoremap <buffer> <C-n> :!runhaskell %<CR>',
})
vim.api.nvim_create_autocmd('FileType', {
    pattern = 'haskell',
    command = 'nnoremap <buffer> <C-l> :!hlint %<CR>',
})

vim.api.nvim_create_autocmd('FileType', {
    pattern = 'sh',
    command = 'nnoremap <buffer> <C-l> :!shellcheck %<CR>',

})
vim.api.nvim_create_autocmd('FileType', {
    pattern = 'clojure',
    command = 'nnoremap <buffer> <C-n> :!clojure %<CR>',
})

vim.api.nvim_create_autocmd('FileType', {
    pattern = 'go',
    command = 'nnoremap <buffer> <C-n> :!go run %<CR>',
})
vim.api.nvim_create_autocmd('FileType', {
    pattern = 'go',
    command = 'nnoremap <buffer> <C-l> :!golangci-lint run %<CR>',
})

vim.api.nvim_create_autocmd('FileType', {
    pattern = 'rust',
    command = 'nnoremap <buffer> <C-n> :!cargo run %<CR>',
})
vim.api.nvim_create_autocmd('FileType', {
    pattern = 'rust',
    command = 'nnoremap <buffer> <C-l> :!cargo check<CR>',
})

vim.api.nvim_create_autocmd('FileType', {
    pattern = 'markdown',
    command = 'nnoremap <buffer> <C-n> :!pandoc -s % -o %:r.pdf<CR>',
})
