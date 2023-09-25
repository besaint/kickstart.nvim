local M = {
    'folke/which-key.nvim',
    event = "VeryLazy",
    opts = {
        icons = {
            group = ''
        },
        layout = {
            spacing = 10, -- spacing between columns
        },
    },
}

function M.init()
    vim.o.timeout = true
    vim.o.timeoutlen = 500

    local wk = require "which-key"
    wk.register({ ["<leader>s"] = { name = "[S]earch" } })
end

return M
