local keymap = vim.keymap.set

-- move lines in visual mode
keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

-- LSP keymap
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspConfig", {}),
  callback = function(args)
    local opts = { buffer = args.buf, silent = true }

    local has_telescope, telescope = pcall(require, "telescope.builtin")
    if has_telescope then
        -- Mit Telescope: Schicke UI mit Live-Vorschau und Filtern
        vim.keymap.set("n", "gd", telescope.lsp_definitions, opts)
        vim.keymap.set("n", "gi", telescope.lsp_implementations, opts)
        vim.keymap.set("n", "gr", telescope.lsp_references, opts)
        -- Listet alle Funktionen, Klassen und Methoden der aktuellen Datei auf
        vim.keymap.set("n", "<leader>fs", telescope.lsp_document_symbols)
    else
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
        vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
    end
    
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)


    -- Code Action, die die gesamte Zeile nach Warnungen scannt (wie in VS)
    vim.keymap.set("n", "<leader>ca", function()
      local line = vim.api.nvim_win_get_cursor(0)[1] - 1
      local diagnostics = vim.diagnostic.get(0, { lnum = line })
      
      -- Wenn Warnungen in der Zeile existieren, nutzen wir deren Position
      if #diagnostics > 0 then
        local diag = diagnostics[1]
        vim.lsp.buf.code_action({
          context = { only = { "", "quickfix", "refactor" } },
          range = {
            ["start"] = { line = diag.lnum, character = diag.col },
            ["end"] = { line = diag.end_lnum or diag.lnum, character = diag.end_col or diag.col },
          },
        })
      else
        -- Fallback: Normale Code Action an der Cursorposition
        vim.lsp.buf.code_action()
      end
    end, opts)
  end,
})
