---@diagnostic disable: unused-local

local GitHub = {
    'projekt0n/github-nvim-theme',
    lazy = false,    -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
}

function GitHub.config()
    require('github-theme').setup({})

    vim.cmd('colorscheme github_dark_dimmed')
end

local Gruvbox = {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000
}

function Gruvbox.config()
    require('gruvbox').setup({
        contrast = "hard"
    })
    vim.o.background = "dark"
    -- vim.g.gruvbox_contrast_dark = "hard"

    vim.cmd('colorscheme gruvbox')
end

local OneDark = {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    opt = {
        style = "warmer",
    }
}

function OneDark.config()
    vim.cmd('colorscheme onedark')
end

local Catppuccin = {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
}

function Catppuccin.config()
    vim.cmd('colorscheme catppuccin-frappe')
end

M = OneDark

return M
