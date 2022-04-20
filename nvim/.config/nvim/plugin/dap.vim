lua << EOF

-- nvim-dap
local dap = require('dap')
dap.adapters.node2 = {
  type = 'executable',
  command = 'node',
  args = {os.getenv('HOME') .. '/vscode-node-debug2/out/src/nodeDebug.js'},
}
vim.fn.sign_define('DapBreakpoint', {text='🔴', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapBreakpointRejected', {text='🟦', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='🟢', texthl='', linehl='', numhl=''})

EOF

" mfussenegger/nvim-dap
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Previous lisandrojm config""

" nnoremap <leader>dh :lua require'dap'.toggle_breakpoint()<CR>
" nnoremap <A-k> :lua require'dap'.step_out()<CR>
" nnoremap <A-l> :lua require'dap'.step_into()<CR>
" nnoremap <A-j> :lua require'dap'.step_over()<CR>
" nnoremap <A-h> :lua require"dap".continue()<CR>
" " nnoremap <leader>ds :lua require'dap'.stop()<CR>
" nnoremap <leader>ds :lua require'dap'.close()<CR>
" nnoremap <leader>dn :lua require'dap'.continue()<CR>
" nnoremap <leader>dk :lua require'dap'.up()<CR>
" nnoremap <leader>dj :lua require'dap'.down()<CR>
" nnoremap <leader>d_ :lua require'dap'.disconnect();require'dap'.stop();require'dap'.run_last()<CR>
" nnoremap <leader>dr :lua require'dap'.repl.open({}, 'vsplit')<CR><C-w>l
" " nnoremap <leader>di :lua require'dap.ui.variables'.hover()<CR>
" nnoremap <leader>di :lua require'dap.ui.widgets'.hover()<CR>
" vnoremap <leader>di :lua require'dap.ui.variables'.visual_hover()<CR>
" " nnoremap <leader>d? :lua require'dap.ui.variables'.scopes()<CR>
" nnoremap <leader>d? :lua local widgets=require'dap.ui.widgets';widgets.centered_float(widgets.scopes)<CR>
" nnoremap <leader>de :lua require'dap'.set_exception_breakpoints({"all"})<CR>
" nnoremap <leader>da :lua require'debugHelper'.attach()<CR>
" nnoremap <leader>dA :lua require'debugHelper'.attachToRemote()<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>dh :lua require"dap".toggle_breakpoint()<CR>
nnoremap <leader>dH :lua require"dap".set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
nnoremap <leader>ds :lua require'dap'.close()<CR>
nnoremap <A-k> :lua require"dap".step_out()<CR>
nnoremap <A-,> :lua require"dap".step_into()<CR>
nnoremap <A-j> :lua require"dap".step_over()<CR>
nnoremap <A-m> :lua require"dap".continue()<CR>
nnoremap <leader>dn :lua require"dap".run_to_cursor()<CR>
nnoremap <leader>dk :lua require"dap".up()<CR>zz
nnoremap <leader>dj :lua require"dap".down()<CR>zz
nnoremap <leader>dc :lua require"dap".terminate()<CR>
nnoremap <leader>dr :lua require"dap".repl.toggle({}, "vsplit")<CR><C-w>l
nnoremap <leader>dR :lua require"dap".clear_breakpoints()<CR>
nnoremap <leader>de :lua require"dap".set_exception_breakpoints({"all"})<CR>
nnoremap <leader>da :lua require"debugHelper".attach()<CR>
nnoremap <leader>dA :lua require"debugHelper".attachToRemote()<CR>
nnoremap <leader>di :lua require"dap.ui.widgets".hover()<CR>
nnoremap <leader>d? :lua local widgets=require"dap.ui.widgets";widgets.centered_float(widgets.scopes)<CR>

" jank/vim-test and mfussenegger/nvim-dap
nnoremap <leader>dd :TestNearest -strategy=jest<CR>
function! JestStrategy(cmd)
  let testName = matchlist(a:cmd, '\v -t ''(.*)''')[1]
  let fileName = matchlist(a:cmd, '\v'' -- (.*)$')[1]
  call luaeval("require'debugHelper'.debugJest([[" . testName . "]], [[" . fileName . "]])")
endfunction
let g:test#custom_strategies = {'jest': function('JestStrategy')}

" Plug 'nvim-telescope/telescope-dap.nvim'
lua << EOF
require('telescope').setup()
require('telescope').load_extension('dap')
EOF
nnoremap <leader>df :Telescope dap frames<CR>
nnoremap <leader>dc :Telescope dap commands<CR>
nnoremap <leader>db :Telescope dap list_breakpoints<CR>

" theHamsta/nvim-dap-virtual-text and mfussenegger/nvim-dap
let g:dap_virtual_text = v:true

" Plug 'rcarriga/nvim-dap-ui'
" lua require("dapui").setup()
" nnoremap <leader>dq :lua require("dapui").toggle()<CR>

" jank/vim-test and mfussenegger/nvim-dap
nnoremap <leader>dd :TestNearest -strategy=jest<CR>
function! JestStrategy(cmd)
  let testName = matchlist(a:cmd, '\v -t ''(.*)''')[1]
  let fileName = matchlist(a:cmd, '\v'' -- (.*)$')[1]
  call luaeval("require'debugHelper'.debugJest([[" . testName . "]], [[" . fileName . "]])")
endfunction
let g:test#custom_strategies = {'jest': function('JestStrategy')}

lua << EOF
-- nvim-dap virtual_text
require("nvim-dap-virtual-text").setup()
-- nvim-ui
require('dapui').setup()
EOF

" nvim-dap virtual-text
let g:dap_virtual_text = v:true
" nvim-dap-ui
nnoremap <leader>dq :lua require('dapui').toggle()<CR>
