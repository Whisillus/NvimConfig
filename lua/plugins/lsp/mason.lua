
local mason = {

    "williamboman/mason.nvim",

    lazy = false,
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
    },
    cmd = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUninstall", "MasonUninstallAll", "MasonLog" },
    build = ":MasonUpdate",

    config = true,
}

return mason
