local dap = require("dap")

vim.keymap.set('n', '<F5>', ":lua require'dap'.continue()<CR>", { desc = "debug continue" })
vim.keymap.set('n', '<F9>', ":lua require'dap'.toggle_breakpoint()<CR>", { desc = "debug toggle breakpoint"})
vim.keymap.set('n', '<F10>', ":lua require'dap'.step_over()<CR>", { desc = "debug step over"} )
vim.keymap.set('n', '<F11>', ":lua require'dap'.step_into()<CR>", { desc = "debug step into" })
vim.keymap.set('n', '<F12>', ":lua require'dap'.step_out()<CR>", { desc = "debug step out" })

dap.adapters.coreclr = {
  type = 'executable',
  command = vim.fn.expand('~/.netcoredbg/netcoredbg'),
  args = {'--interpreter=vscode'}
}

dap.configurations.cs = {
  {
    type = "coreclr",
    name = "Debug global default",
    request = "launch",
    program = function()
        return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
    end,
  },
}

require('dap.ext.vscode').load_launchjs(nil, { 
	coreclr = { 'cs' }
})
