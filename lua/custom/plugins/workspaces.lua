vim.keymap.set('n', '<leader>sp', ":Telescope workspaces<CR>", { desc = '[S]earch [P]roject' })

return {
    "natecraddock/workspaces.nvim",
    config = function()
        require("workspaces").setup({
            hooks = {
                open = { "Telescope find_files find_command=rg,--ignore,--hidden,--files" },
            }
        })
    end,
}
