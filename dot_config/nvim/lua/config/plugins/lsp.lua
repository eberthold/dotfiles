return {
  "neovim/nvim-lspconfig",
  config = function()

    -- Pfad zum LSP-Konfigurationsordner scannen und Sprachdateien laden
    local lsp_dir = vim.fn.stdpath("config") .. "/lua/config/lsp"
    local handle = vim.uv.fs_scandir(lsp_dir)
    if handle then
      while true do
        local name, fs_type = vim.uv.fs_scandir_next(handle)
        if not name then break end
        
        if fs_type == "file" and name:match("%.lua$") then
          local module_name = name:gsub("%.lua$", "")
          local server_setup = require("config.lsp." .. module_name)
          if type(server_setup) == "function" then
            server_setup(module_name)
          end
        end
      end
    end
  end,
}

