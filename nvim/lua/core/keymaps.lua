local opts = { noremap = true, silent = true }
local term_opts = { silent = true } 
local set_keymap = vim.api,nvim_set_keymap

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Modes
-- 'n': normal
-- 'i': insert
-- 'v': visual_mode
-- 'x': visual_block_mode
-- 't': term_mode 
-- 'c': command_mode

-- Window navigation 
set_keymap("n", "<C-h>", "<C-w>h", opts)
set_keymap("n", "<C-j>", "<C-w>j", opts)
