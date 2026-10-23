return {
  "nvim-treesitter/nvim-treesitter",
  -- Nutzt automatisch den neuen 'main'-Branch
  build = ":TSUpdate",
  opts = {
    ensure_installed = { 
      "lua", "vim", "vimdoc", "query", "json", "bash", 
      "markdown", "markdown_inline", "c_sharp", "xml", "html", "yaml", "toml" 
    },
    highlight = { enable = true },
    indent = { enable = true },
  },
  config = function(_, opts)
    -- Die neue Art, Treesitter im main-branch zu initialisieren
    -- (Es gibt kein require("nvim-treesitter.configs") mehr!)
    
    -- Dateitypen registrieren
    vim.filetype.add({
      extension = {
        xaml = "xml",
      }
    })
  end,
}
