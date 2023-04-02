local colorscheme = "rose-pine"

local colorscheme_found, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not colorscheme_found then
	vim.notify("Colorscheme " .. colorscheme .. " not found :(")
	return
end

vim.cmd("highlight Cursor guifg=#8BC34A guibg=#8BC34A")
vim.cmd("highlight iCursor guifg=white guibg=steelblue")

-- Reset the cursor color to the default color when Vim exits
vim.cmd("autocmd VimLeave * highlight Cursor guifg=white guibg=white")

