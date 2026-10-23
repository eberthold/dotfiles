return {
  "neovim/nvim-lspconfig",
  dependencies = {
    { "jedrzejboczar/devcontainers.nvim", branch = "main" },
  },
  config = function()
    local devcontainers = require("devcontainers")

    -- Initialisiere das Devcontainer-Plugin für Podman
    devcontainers.setup({
      container_runtime = "podman",
      autocommands = true,
    })

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
            server_setup(module_name, devcontainers.lsp_cmd)
          end
        end
      end
    end

    -- HIER KORRIGIERT: 'nvim_create_autocmd' statt 'nvim_create_autocallback'
    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if client then
          devcontainers.on_attach(client)
        end
      end,
    })
  end,
}

