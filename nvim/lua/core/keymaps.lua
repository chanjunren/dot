local opts = { noremap = true, silent = true }
local term_opts = { silent = true } 
local set_keymap = vim.api.nvim_set_keymap

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Modes
-- 'n': normal
-- 'i': insert
-- 'v': visual_mode
-- 'x': visual_block_mode
-- 't': term_mode 
-- 'c': command_mode

-- Split window
set_keymap("n", "<leader>j", ":bel split<CR>", opts)
set_keymap("n", "<leader>l", ":bel vsplit<CR>", opts)
set_keymap("n", "<leader>w", ":close<CR>", opts)

-- Window navigation 
set_keymap("n", "<C-h>", "<C-w>h", opts)
set_keymap("n", "<C-j>", "<C-w>j", opts)
set_keymap("n", "<C-k>", "<C-w>k", opts)
set_keymap("n", "<C-l>", "<C-w>l", opts)

set_keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- Resize with arrows
set_keymap("n", "<C-Up>", ":resize -2<cr>", opts)
set_keymap("n", "<C-Down>", ":resize -2<cr>", opts)
set_keymap("n", "<C-Left>", ":resize -2<cr>", opts)
set_keymap("n", "<C-Right>", ":resize -2<cr>", opts)
