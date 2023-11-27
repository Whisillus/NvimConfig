
local lsp = {
    ensure_installed = { "clangd", "pyright", "cmake", "yamlls" },
}

local mason = {

    {
        'williamboman/mason.nvim',

        cmd = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUninstall", "MasonUninstallAll", "MasonLog" },
        build = ":MasonUpdate",

        config = function()
            require('mason').setup()
        end,
    },

    {
        "williamboman/mason-lspconfig.nvim",

        dependencies = {
            "williamboman/mason.nvim",
        },
        opts = lsp,
        config = function(_, opts) 
            require('mason-lspconfig').setup(opts)
        end,
    },
}

return mason
