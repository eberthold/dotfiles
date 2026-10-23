return {
  "jedrzejboczar/devcontainers.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter", -- Benötigt für das Parsen von devcontainer.json
  },
  config = function()
    require("devcontainers").setup({
      -- Hier stellen wir explizit von Docker auf Podman um
      container_runtime = "podman", 
      
      -- Automatisch nach laufenden Devcontainers suchen
      autocommands = true,
    })
  end,
}
