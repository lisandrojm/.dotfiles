require("theprimeagen.telescope")
require("theprimeagen.git-worktree")
require("theprimeagen.harpoon")
-- require("theprimeagen.statusline")
-- require("theprimeagen.debugger")
require("theprimeagen.lsp")
require("rust-tools").setup({})
require("theprimeagen.disable_builtin")
require("theprimeagen.nvim-tree")
-- require("null-ls").setup({})

P = function(v)
	print(vim.inspect(v))
	return v
end

if pcall(require, "plenary") then
	RELOAD = require("plenary.reload").reload_module

	R = function(name)
		RELOAD(name)
		return require(name)
	end
end
