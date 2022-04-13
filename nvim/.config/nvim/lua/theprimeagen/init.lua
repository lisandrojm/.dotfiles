require("theprimeagen.telescope")
require("theprimeagen.git-worktree")
require("theprimeagen.harpoon")
-- require("theprimeagen.statusline")
require("theprimeagen.debugger")
require("theprimeagen.lsp")
require("rust-tools").setup({})
-- nvim-dap
require("telescope").load_extension("dap")
-- require("theprimeagen.debugHelper")
require("theprimeagen.disable_builtin")

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
