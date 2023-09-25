local M = {
    "nvim-lualine/lualine.nvim",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
}

function M.config()
    require 'configs.evil_lualine'
end

return M
