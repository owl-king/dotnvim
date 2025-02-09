local keymapOpts = {
    silent = true,
    noremap = true
}
vim.keymap.set({ "n", "v" }, "<leader>ft", ":Neotree toggle<CR>", keymapOpts)

return {
    "nvim-neo-tree/neo-tree.nvim",
    version = "*",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require('neo-tree').setup({
            window = {
                position = "right",
            }
        })
    end,
}
