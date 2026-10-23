return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000, -- Sorgt dafür, dass das Theme vor allem anderen geladen wird
  config = function()
    require("catppuccin").setup({
      flavour = "frappe", -- latte, frappe, macchiato, mocha
      transparent_background = false,
      term_colors = true,
    })

    -- Theme aktivieren
    vim.cmd.colorscheme("catppuccin")
  end,
}
