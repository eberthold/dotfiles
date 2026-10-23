return function(_, get_lsp_cmd)
  -- Der neue, native 0.11+ Weg für Roslyn C#
  vim.lsp.config("roslyn_ls", {
    cmd = get_lsp_cmd({ "roslyn-language-server", "--stdio" }),
    root_markers = { "*.sln", ".git", ".devcontainer" }, -- 0.11+ nutzt 'root_markers' statt util.root_pattern!
    settings = {
      ["csharp|inlay_hints"] = {
        csharp_enable_inlay_hints_for_implicit_object_creation = true,
        csharp_enable_inlay_hints_for_implicit_variable_types = true,
        csharp_enable_inlay_hints_for_lambda_parameter_types = true,
        csharp_enable_inlay_hints_for_types = true,
      },
    },
  })

  -- Aktiviert das LSP für die passenden Filetypes
  vim.lsp.enable("roslyn_ls")
end

