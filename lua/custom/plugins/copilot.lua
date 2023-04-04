vim.keymap.set('i', '<C-S>', '<C-R>=copilot#Accept("")<CR>', { desc = "Use copilot", remap = false })
vim.keymap.set("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
vim.keymap.set("i", "<C-H>", 'copilot#Previous()', { silent = true, expr = true })
vim.keymap.set("i", "<C-K>", 'copilot#Next()', { silent = true, expr = true })

return {
  "github/copilot.vim",
}

