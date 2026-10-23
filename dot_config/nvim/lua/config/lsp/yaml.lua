return function(_, get_lsp_cmd)
  vim.lsp.config("yamlls", {
    cmd = get_lsp_cmd({ "yaml-language-server", "--stdio" }),
    root_markers = { ".git", ".devcontainer" },
  })
  
  vim.lsp.enable("yamlls")
end

