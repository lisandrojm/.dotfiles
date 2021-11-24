require("theprimeagen.telescope")
require("theprimeagen.git-worktree")
require("theprimeagen.harpoon")
-- require("theprimeagen.statusline")
require("theprimeagen.debugger")
require("theprimeagen.lsp")

P = function(v)
  print(vim.inspect(v))
  return v
end

if pcall(require, 'plenary') then
  RELOAD = require('plenary.reload').reload_module

  R = function(name)
    RELOAD(name)
    return require(name)
  end
end

-- require'lspinstall'.setup()
-- local servers = require'lspinstall'.installed_servers()
-- for _, server in pairs(servers) do
--   require'lspconfig'[server].setup{}
-- end

