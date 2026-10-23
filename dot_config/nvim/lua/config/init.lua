require("config.options")
require("config.keymaps")

-- nothing more for vscode usage
if vim.g.vscode then
    return
end

-- start lazy
require("config.lazy")

