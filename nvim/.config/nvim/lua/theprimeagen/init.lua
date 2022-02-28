require("theprimeagen.telescope")
require("theprimeagen.harpoon")
require("theprimeagen.debugger")
require("theprimeagen.lsp")
require('rust-tools').setup({})
-- require("theprimeagen.git-worktree")
-- require("theprimeagen.statusline")

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
