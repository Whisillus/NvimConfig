
require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = {"clangd", "cmake", "pyright", "rome"},
}

