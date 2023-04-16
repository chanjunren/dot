--[[ local colorscheme = "rose-pine" ]]
--[[]]
--[[ local colorscheme_found, _ = pcall(vim.cmd, "colorscheme " .. colorscheme) ]]
--[[]]
--[[ if not colorscheme_found then ]]
--[[ 	vim.notify("Colorscheme " .. colorscheme .. " not found :(") ]]
--[[ 	return ]]
--[[ end ]]
--[[]]
vim.cmd("augroup MyCursorSettings")
vim.cmd("autocmd!")
vim.cmd("autocmd ColorScheme * highlight MyNormalCursor guifg=#8BC34A guibg=#8BC34A")
vim.cmd("autocmd ColorScheme * highlight MyInsertCursor guifg=white guibg=steelblue")
vim.cmd("autocmd ColorScheme * set guicursor=n:block-MyNormalCursor,i:ver100-MyInsertCursor")
vim.cmd("augroup END")


-- Reset the cursor color to the default color when Vim exits
vim.cmd("autocmd VimLeave * highlight Cursor guifg=white guibg=white")

