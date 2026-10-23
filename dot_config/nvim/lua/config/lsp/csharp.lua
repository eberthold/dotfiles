-- Der native 0.11+ Weg für Roslyn C#
vim.lsp.config("roslyn_ls", {
  -- Falls du Mason nutzt, sucht Neovim die Binärdatei dort automatisch.
  -- Alternativ kannst du hier den absoluten Pfad oder den Standardbefehl eintragen:
  cmd = { "roslyn-language-server", "--stdio" },
  
  -- Definiert, bei welchen Dateien das LSP anspringen soll
  filetypes = { "cs" },

  -- root_markers sucht im Verzeichnisbaum nach oben nach Projektdateien
  root_markers = { "*.sln", "*.csproj", ".git" },

  settings = {
    ["csharp|inlay_hints"] = {
      csharp_enable_inlay_hints_for_implicit_object_creation = true,
      csharp_enable_inlay_hints_for_implicit_variable_types = true,
      csharp_enable_inlay_hints_for_lambda_parameter_types = true,
      csharp_enable_inlay_hints_for_types = true,
    },
  },
})

-- Aktiviert das LSP für C#
vim.lsp.enable("roslyn_ls")

