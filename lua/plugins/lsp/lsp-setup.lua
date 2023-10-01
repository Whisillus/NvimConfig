
local clangd = {

    "neovim/nvim-lspconfig",
    dependencies = {
      "mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
    },

    lazy = false,
    config = function(_, opts) 
        -- Setup Clangd
        local cmp = require('cmp_nvim_lsp').default_capabilities()
        require('lspconfig').clangd.setup({
            capabilities = cmp,
            cmd = {
                "clangd",
                "--offset-encoding=utf-16",
                -- "--all-scopes-completion",
                -- "--suggest-missing-includes",
                -- "--background-index",
                -- "--pch-storage=disk",
                -- "--cross-file-rename",
                -- "--log=info",
                -- "--completion-style=detailed",
                -- "--enable-config", -- clangd 11+ supports reading from .clangd configuration file
                -- "--clang-tidy",
                -- "--clang-tidy-checks=-*,llvm-*,clang-analyzer-*,modernize-*,-modernize-use-trailing-return-type",
                -- "--fallback-style=Google",
                -- "--header-insertion=never",
                -- "--query-driver=<list-of-white-listed-complers>"
            }
        })

        -- Setup texlab
        require('lspconfig').texlab.setup({
        })

        -- Setup texlab
        require('lspconfig').pyright.setup({
        })

    end
}

return clangd