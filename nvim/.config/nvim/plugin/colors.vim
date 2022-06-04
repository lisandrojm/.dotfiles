let g:theprimeagen_colorscheme = "gruvbox"
fun! ColorMyPencils()
    let g:gruvbox_contrast_dark = 'hard'
    if exists('+termguicolors')
        let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
        let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    endif
    let g:gruvbox_invert_selection='1'

    set background=dark
    if has('nvim')
        call luaeval('vim.cmd("colorscheme " .. _A[1])', [g:theprimeagen_colorscheme])
    else
        " TODO: What the way to use g:theprimeagen_colorscheme
        colorscheme gruvbox
    endif

    hi SignColumn guibg=none
    hi CursorLineNR guibg=none
    hi CursorLine guibg=none
    hi Normal guibg=none
    hi LineNr guifg=#5eacd3
    hi netrwDir guifg=#5eacd3
    hi qfFileName guifg=#aed75f
    hi TelescopeBorder guifg=#ffffff
    hi NERDTreeDir guifg=#5eacd3
    " hi NvimTreeFolderIcon guifg=#5eacd3
    hi NvimTreeFolderName guifg=#5eacd3
    " hi NvimTreeFolder guibg=#5eacd3
    " hi NvimTreeFileIcon guifg=#5eacd3
    " hi NvimTreeFileName guifg=#5eacd3
    hi NvimTreeImageFile guifg=#5eacd3 ctermfg=175 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
    hi NvimTreeGitDirty guifg=#81b88b ctermfg=108 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
    hi NvimTreeGitDeleted guifg=#81b88b ctermfg=108 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
    hi NvimTreeGitStaged guifg=#81b88b ctermfg=108 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
    hi NvimTreeGitMerge guifg=#81b88b ctermfg=108 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
    hi NvimTreeGitRenamed guifg=#81b88b ctermfg=108 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
    hi NvimTreeGitNew guifg=#81b88b ctermfg=108 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
    hi NvimTreeIndentMarker guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
    hi NvimTreeSymlink guifg=#29b8d8 ctermfg=38 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
    hi NvimTreeFolderIcon guifg=#5eacd3 ctermfg=74 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
    hi NvimTreeRootFolder guifg=#5eacd3 ctermfg=249 guibg=NONE ctermbg=NONE gui=bold cterm=bold
    hi NvimTreeExecFile guifg=#5eacd3 ctermfg=42 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
    hi NvimTreeSpecialFile guifg=#ffcc66 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE





endfun
call ColorMyPencils()

" Vim with me
nnoremap <leader>cmp :call ColorMyPencils()<CR>
nnoremap <leader>vwb :let g:theprimeagen_colorscheme =
" ------------------------------------------------------------------------------
" lisandrojm
" Html highlighting
hi htmltag guifg=#fe8019
hi htmlEndtag guifg=#fe8019
hi htmlTagName guifg=#fb4934
hi htmlArg  ctermfg=182  guifg=#8ec07c
hi htmlValue guifg=#dfdfaf

" GitGutter
hi GitGutterAdd    guifg=#b8bb26 ctermfg=2
hi GitGutterChange guifg=#fe8019 ctermfg=3
hi GitGutterDelete guifg=#fb4934 ctermfg=1

" Vertically split
hi VertSplit guibg=none

" NerdTree
augroup NerdCursor
  autocmd!
  autocmd BufEnter NERD_tree_* hi CursorLine guibg=#282828
  autocmd BufLeave NERD_tree_* highlight clear CursorLine
  autocmd BufAdd * highlight clear CursorLine
augroup END

" ColorColumn
hi ColorColumn guibg=#282828

" Menu
highlight Pmenu ctermbg=gray guibg=#32302f
highlight PmenuSel ctermbg=gray guibg=#928374 guifg=#282828

" lspsaga fork
highlight LspSagaHoverBorder guifg=#504945 cterm=bold gui=bold cterm=bold gui=bold
highlight LspFloatWinBorder guifg=#504945 cterm=bold gui=bold cterm=bold gui=bold
highlight LspSagaRenameBorder guifg=#504945 cterm=bold gui=bold cterm=bold gui=bold
highlight LspLinesDiagBorder guifg=#504945 cterm=bold gui=bold cterm=bold gui=bold
highlight LspSagaCodeActionBorder guifg=#504945 cterm=bold gui=bold cterm=bold gui=bold
highlight LspSagaDefPreviewBorder guifg=#504945 cterm=bold gui=bold cterm=bold gui=bold
highlight LspSagaSignatureHelpBorder guifg=#504945 cterm=bold gui=bold cterm=bold gui=bold
highlight LspSagaBorderTitle guifg=#504945 cterm=bold gui=bold cterm=bold gui=bold
highlight ReferencesCount guifg=#b8bb26
highlight DefinitionCount guifg=#b8bb26
highlight TargetFileName guifg=#b8bb26
highlight DefinitionIcon guifg=#b8bb26
highlight ReferencesIcon guifg=#b8bb26
highlight SagaShadow guifg=#b8bb26
highlight LspSagaFinderSelection guifg=#d3869b
highlight LspSagaFinderTitle guifg=#d3869b
highlight DefinitionPreviewTitle guifg=#d3869b
highlight LspSagaCodeActionTitle guifg=#d3869b
highlight LspSagaCodeActionContent guifg=#fabd2f
highlight LspSagaRenamePromptPrefix guifg=#d3869b
highlight LspSagaAutoPreview guifg=#b8bb26
highlight ProviderTruncateLine guifg=#504945
highlight LspSagaShTruncateLine guifg=#504945
highlight LspSagaDocTruncateLine guifg=#504945
highlight LspSagaCodeActionTruncateLine guifg=#504945
highlight LineDiagTuncateLine guifg=#504945
