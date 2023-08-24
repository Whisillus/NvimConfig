require("lint").linters_by_ft = {
    python = {"pylint"},
    c = {"clangtidy"},
    cpp = {"clangtidy"},
    cmake = {"cmakelint"},
    javascript = {"eslint"},
    typescript = {"eslint"},
    go = {"golangcilint"},
    markdown = {"vale"},
    yaml = {"yamllint"},
    bash = {"shellcheck"},
    lua = {"luacheck"},
    -- INFO: add your language here
}

vim.keymap.set("n", "<leader>l", function () require('lint').try_lint() end)
