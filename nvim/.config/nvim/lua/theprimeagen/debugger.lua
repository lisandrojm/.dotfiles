-- local dap_install = require("dap-install")
-- dap_install.config("chrome", {})
--
--
-- local dap = require("dap");
-- dap.configurations.typescriptreact = { -- change to typescript if needed
--     {
--         type = "chrome",
--         request = "attach",
--         program = "${file}",
--         cwd = vim.fn.getcwd(),
--         sourceMaps = true,
--         protocol = "inspector",
--         port = 9222,
--         webRoot = "${workspaceFolder}"
--     }
-- }
--
-- require('dap.ext.vscode').load_launchjs()

---------------------------------------------------
-- nvim-dap
local dap = require('dap')
dap.adapters.node2 = {
  type = 'executable',
  command = 'node',
  args = {os.getenv('HOME') .. '/vscode-node-debug2/out/src/nodeDebug.js'},
}
vim.fn.sign_define('DapBreakpoint', {text='🟥', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='🟢', texthl='', linehl='', numhl=''})

-- nvim-dap virtual_text
require("nvim-dap-virtual-text").setup()
-- nvim-ui
require('dapui').setup()
