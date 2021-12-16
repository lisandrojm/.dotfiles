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
    hi Normal guibg=none
    hi LineNr guifg=#5eacd3
    hi netrwDir guifg=#5eacd3
    hi qfFileName guifg=#aed75f
    hi TelescopeBorder guifg=#5eacd

endfun
call ColorMyPencils()

" Vim with me
nnoremap <leader>cmp :call ColorMyPencils()<CR>
nnoremap <leader>vwb :let g:theprimeagen_colorscheme =

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
