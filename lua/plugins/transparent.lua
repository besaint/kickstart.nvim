local M = {
    'xiyaowong/transparent.nvim',
    lazy = false,
    opts = {
        {              -- Optional, you don't have to run setup.
            groups = { -- table: default groups
                'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
                'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
                'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
                'SignColumn', 'CursorLineNr', 'EndOfBuffer',
            },
            extra_groups = {},   -- table: additional groups that should be cleared
            exclude_groups = {}, -- table: groups you don't want to clear
        }
    },
}

function M.config()
    vim.g.transparent_groups = vim.list_extend(
        vim.g.transparent_groups or {},
        vim.tbl_map(function(v)
            return v.hl_group
        end, vim.tbl_values(require('bufferline.config').highlights))
    )
    require('transparent').clear_prefix('BufferLine')
    require('transparent').clear_prefix('NeoTree')
    require('transparent').clear_prefix('lualine')
end

return M
