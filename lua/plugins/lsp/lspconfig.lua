
local lspconfig = {

    "neovim/nvim-lspconfig",

    event = { "BufReadPre", "BufNewFile" },
    cmd = { "LspInfo", "LspInstall", "LspUninstall" },

    dependencies = {
      "mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
}

return lspconfig
