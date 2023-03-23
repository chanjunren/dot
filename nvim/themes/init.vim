if (has("termguicolors"))
 set termguicolors
endif

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
syntax enable
colorscheme night-owl

let g:lightline = { 'colorscheme': 'nightowl' }

highlight Cursor guifg=#8BC34A guibg=#8BC34A
highlight iCursor guifg=white guibg=steelblue
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10

" Reset the cursor color to the default color when Vim exits
autocmd VimLeave * highligh CUrsor guifg=white guibg=white 

