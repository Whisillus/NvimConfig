local null_ls = require("null-ls")

local null_ls_setup = {
    sources = {
        -- null_ls.builtins.diagnostics.pylint,
        null_ls.builtins.formatting.autopep8,
        null_ls.builtins.formatting.clang_format.with({
            extra_args = {
                "-style=" .. vim.fn.expand("$HOME/.clang-format"),
            },
        }),
    },
} 

null_ls.setup(null_ls_setup)
