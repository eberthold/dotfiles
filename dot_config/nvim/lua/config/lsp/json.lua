return function(_, get_lsp_cmd)
  vim.lsp.config("jsonls", {
    cmd = get_lsp_cmd({ "vscode-json-language-server", "--stdio" }),
    root_markers = { ".git", ".devcontainer" },
  })
  
  vim.lsp.enable("jsonls")
end

