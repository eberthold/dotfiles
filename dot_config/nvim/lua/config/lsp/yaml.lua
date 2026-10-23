vim.lsp.config("yamlls", {
    cmd = { "yaml-language-server", "--stdio" },
    root_markers = { ".git", ".devcontainer" },
})

vim.lsp.enable("yamlls")

