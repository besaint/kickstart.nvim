local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system {
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable', -- latest stable release
        lazypath,
    }
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    -- Git related plugins
    'tpope/vim-fugitive',
    'tpope/vim-rhubarb',

    -- Detect tabstop and shiftwidth automatically
    -- 'tpope/vim-sleuth',

    "famiu/bufdelete.nvim",
    {
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons',
        opts = {
            options = {
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "File Explorer",
                        text_align = "center",
                        separator = false,
                    },
                },
            },
        }
    },

    {
        'lukas-reineke/indent-blankline.nvim',
        opts = {
            char = '┊',
            show_trailing_blankline_indent = false,
        },
    },

    {
        'windwp/nvim-autopairs',
        event = "insertenter",
        opts = {}
    },
    {
        "windwp/nvim-ts-autotag",
        config = function()
            require("nvim-ts-autotag").setup()
        end,
    },

    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {},
    },

    {
        "petertriho/nvim-scrollbar",
        event = "VeryLazy",
        config = function()
            local scrollbar = require("scrollbar")
            scrollbar.setup({
                show_in_active_only = true,
                handle = {
                    blend = 0,
                    text = " ",
                    color = "#1c1c1c",
                    color_nr = 234,
                },
                marks = {
                    Search = { color = "#C9A554" },
                    Error  = { color = "#685742" },
                    Warn   = { color = "#B36D43" },
                    Info   = { color = "#5f875f" },
                    Hint   = { color = "#5f875f" },
                    Misc   = { color = "#bb7744" },
                    Cursor = { color = "#222222", text = " " },
                }
            })
        end,
    },

    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        opts = {},
    },

    { import = 'plugins' }
}, {})
