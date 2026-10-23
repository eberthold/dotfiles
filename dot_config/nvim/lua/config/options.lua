vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = vim.opt
opt.number = true          -- relative line numbers
opt.relativenumber = true
opt.splitright = true      -- default split settings
opt.splitbelow = true
opt.expandtab = true       -- SPACES!
opt.shiftwidth = 4
opt.tabstop = 4
opt.smartindent = true
opt.termguicolors = true   -- True Color Support (important for themes)

-- Inline-Hinweise für Fehler und Warnungen global aktivieren (Neovim 0.11+)
vim.diagnostic.config({
  -- Schaltet den Text am Zeilenende ein
  virtual_text = {
    spacing = 4,
    prefix = "●", -- Symbol vor der Fehlermeldung
  },
  -- Unterstreicht die fehlerhaften Wörter im Code
  underline = true,
  -- Sortiert die Fehler nach Wichtigkeit (Error -> Warnung)
  severity_sort = true,
  -- Aktualisiert die Hinweise auch während des Tippens (Insert Mode)
  update_in_insert = false, 
})
-- LSP Inlay Hints (z.B. Parameternamen im Code) global einschalten
--vim.lsp.inlay_hint.enable(true)

