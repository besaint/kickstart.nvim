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
    wk.register({
        ["<leader>s"] = { name = "[S]earch" },
        ["<leader>d"] = { name = "[D]ebug" },
        ["<leader>ds"] = { name = "[D]ebug: [S]tep" },
        ["<leader>w"] = { name = "[W]orkspace" },
        ["<leader>l"] = { name = "[L]SP" },
        ["<leader>g"] = { name = "[G]it" },
    })
end

return M
