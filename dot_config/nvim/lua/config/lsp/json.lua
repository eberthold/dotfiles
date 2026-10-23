vim.lsp.config("jsonls", {
    cmd = { "vscode-json-language-server", "--stdio" },
    root_markers = { ".git", ".devcontainer" },
})

vim.lsp.enable("jsonls")

