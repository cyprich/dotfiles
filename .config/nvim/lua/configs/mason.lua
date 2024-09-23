require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
    "bash-debug-adapter",
    "bash-language-server",
    "beautysh",
    "clangd",
    "cpplint",
    "cpptools",
    "darker",
    "debugpy",
    "lua-language-server",
    "pylint",
    "pyright",
    "shellcheck",
    "stylua",
    },
})

