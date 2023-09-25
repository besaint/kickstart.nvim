-- "gc" to comment visual regions/lines
local M = {
    'numToStr/Comment.nvim',
    opts = {},
    keys = {
        {
            "<leader>/",
            "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>",
            desc = "Comment code"
        },
        {
            "<leader>/",
            "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
            mode = "x",
            desc = "Comment code"
        },
    }
}

return M
